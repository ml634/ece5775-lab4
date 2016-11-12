#include <sys/types.h>
#include <sys/mman.h>
#include <linux/fb.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <cstdlib>
#include <iostream>
#include <cstring>
#include <sds_lib.h>
#include <time.h>
#include <pthread.h>
#include <opencv2/opencv.hpp>
#include <errno.h>

#include "draw.h"
#include "drm.h"

#define PIXEL_STRIDE	5
#define RUN_SECONDS		30

struct webcam_thread_data {
	int thread_id;
	volatile char *camera;
	uint32_t webcam_x_res;
	uint32_t webcam_y_res;
	volatile bool ready;
	volatile bool stop;
};

drm_modeset_dev *modeset_list = NULL;
int num_modeset_dev = 0;

/* This thread is responsible for capturing data from the webcam, scaling (if necessary), and color space
 * conversion.
 */
void *webcam_thread(void *thread_data)
{
	webcam_thread_data *data = (webcam_thread_data *)thread_data;

	cv::VideoCapture webcam(0);

	if(!webcam.isOpened()) {
		std::cerr << "Cannot open the webcam" << std::endl;
		exit(1);
	}

	webcam.set(3, 320);
	webcam.set(4, 240);

	data->webcam_x_res = (int)(webcam.get(3) + 0.5);
	data->webcam_y_res = (int)(webcam.get(4) + 0.5);
	std::cout << "Webcam opened at " << data->webcam_x_res << "x" << data->webcam_y_res << std::endl;

	cv::Mat webcam_frame;
	webcam >> webcam_frame;

	/* The use of sds_alloc here is equivalent to malloc(), but registers the buffers with the SDSoC
	 * back end and ensures that we're allocating contiguous memory for subsequent DMA operations.
	 */

	char *buffer_one_pointer = (char *)sds_alloc(webcam_frame.total() * 4);
	char *buffer_two_pointer = (char *)sds_alloc(webcam_frame.total() * 4);

  if ((!buffer_one_pointer) || (!buffer_two_pointer)) {
    std::cerr << "ERROR: Unable to allocate memory for incoming webcam frames" << std::endl;
    exit(1);
  }

	cv::Mat rgba_mat1(webcam_frame.size(), CV_8UC4, buffer_one_pointer);
	cv::Mat rgba_mat2(webcam_frame.size(), CV_8UC4, buffer_two_pointer);

	cv::cvtColor(webcam_frame, rgba_mat1, cv::COLOR_BGR2RGBA, 4);
	data->camera = buffer_one_pointer;
	data->ready = 1;

	while(1) {

		// Check for our exit condition
		if (data->stop) {
			pthread_exit(NULL);
		}

		webcam >> webcam_frame;
		if (data->camera == buffer_one_pointer) {
			cv::cvtColor(webcam_frame, rgba_mat2, cv::COLOR_BGR2BGRA, 4);
			data->camera = buffer_two_pointer;
		}
		else {
			cv::cvtColor(webcam_frame, rgba_mat1, cv::COLOR_BGR2BGRA, 4);
			data->camera = buffer_one_pointer;
		}
	}
}

/* This function handles actually calling the hardware accelerator. In addition, it manages the pointers
 * for the current frame buffer and registers a page flip request with the DRM subsystem when we're done
 * drawing the next frame.
 */
static void draw_hardware(int fd, struct webcam_thread_data *thread_data)
{
	static unsigned int x, y = 0;
	static bool x_dir, y_dir = false;
	drm_modeset_buf *buf;
	char *fb;
	int status;

	unsigned long long count_start;

	/* Ensure that we're using the current (non-displayed) frame buffer, then launch the hardware
	 * accelerator to fill it. We'll bracket this with timebase functions to accurately calculate the
	 * CPU time spent on hardware acceleration.
	 */
	buf = &modeset_list->bufs[modeset_list->front_buf ^ 1];
	fb = (char *)buf->map;
	count_start = sds_clock_counter();
	draw_something((unsigned int *)fb, (unsigned int *)thread_data->camera, buf->width,
			buf->height, thread_data->webcam_x_res, thread_data->webcam_y_res, x, y);
	modeset_list->total_run_time += sds_clock_counter() - count_start;

	/* Swap the frame buffers */
	status = drmModePageFlip(fd, modeset_list->crtc, buf->fb, DRM_MODE_PAGE_FLIP_EVENT, thread_data);
	if (status) {
		std::cerr << "ERROR: Cannot schedule page flip for connector " << modeset_list->conn
				<< ": " << status << std::endl;
	}
	else {
		modeset_list->front_buf ^= 1;
		modeset_list->pflip_pending = true;
	}

	// Everything after this is just repositioning the overlay for the next frame
	if (x_dir) {
		x -= PIXEL_STRIDE;
		if (x <= 0) {
			x = 0;
			x_dir = false;
		}
	}
	else {
		x += PIXEL_STRIDE;
		if (x >= (buf->width - thread_data->webcam_x_res)) {
			x = buf->width - thread_data->webcam_x_res;
			x_dir = true;
		}
	}

	if (y_dir) {
		y -= PIXEL_STRIDE;
		if (y <= 0) {
			y = 0;
			y_dir = false;
		}
	}
	else {
		y += PIXEL_STRIDE;
		if (y >= (buf->height - thread_data->webcam_y_res)) {
			y = buf->height - thread_data->webcam_y_res;
			y_dir = true;
		}
	}
	modeset_list->num_frames++;
}

/* This is the software equivalent version of the hardware accelerator, so that we can effectively
 * compare the CPU execution time between hardware and software
 */
int draw_something_sw(unsigned int *fb,
				      unsigned int *img,
					  unsigned int x_res,
					  unsigned int y_res,
					  unsigned int img_x_res,
					  unsigned int img_y_res,
					  unsigned int img_x,
					  unsigned int img_y) {

	for(unsigned int y = 0; y < y_res; y++) {
		for(unsigned int x = 0; x < x_res; x++) {
			if((x >= img_x) && (x < (img_x + img_x_res)) &&
			   (y >= img_y) && (y < (img_y + img_y_res))) {
				*fb++ = *img++;
			}
			else {
				*fb++ = 0;
			}
		}
	}

	return 0;
}


/* Every time we flip a page, i.e. every time the display is in the vlank state and we have a new
 * frame buffer drawn, this event will be called. As long as we're not pending a cleanup (system shutdown)
 * we'll immediately launch into drawing the next hardware frame buffer.
 */
static void drm_page_flip_event(int fd, unsigned int frame,
								unsigned int sec, unsigned int usec,
								void *data)
{
	modeset_list->pflip_pending = false;
	if(!modeset_list->cleanup) {
		draw_hardware(fd, (struct webcam_thread_data *)data);
	}
}


int main(int argc, char *argv[])
{
	webcam_thread_data thread_data;
	pthread_t thread_id;
	char *fb = NULL;
	drm_modeset_buf *buf;
	int fd;
	drmEventContext ev;
	timeval v;
	time_t start_time, current_time;
	fd_set fds;

	thread_data.ready = false;
	thread_data.stop = false;

	// Open the DRM device
	if (drm_open(&fd, "/dev/dri/card0")) {
		std::exit(1);
	}

	// Prepare all connectors and CRTCs
	if (drm_prepare(fd, &num_modeset_dev)) {
		close(fd);
		exit(1);
	}

	// Perform modesetting on each found connector + CRTC
	for (drm_modeset_dev *iter = modeset_list; iter; iter = iter->next) {
		iter->saved_crtc = drmModeGetCrtc(fd, iter->crtc);
		buf = &iter->bufs[iter->front_buf];
		if (drmModeSetCrtc(fd, iter->crtc, buf->fb, 0, 0, &iter->conn, 1, &iter->mode)) {
			std::cerr << "Cannot set CRTC for connector " << iter->conn << std::endl;
		}
	}

	std::cout << "Have " << num_modeset_dev << " modeset structs" << std::endl;

	std::cout << "Front buf is " << modeset_list->front_buf << std::endl;

	buf = &modeset_list->bufs[modeset_list->front_buf];
	std::cout << "Line length: " << buf->size << " (Stride " << buf->stride << ")" << std::endl;

	// Launch the webcam thread and wait for it to become ready
	std::cout << "Preparing webcam..." << std::endl;
	pthread_create(&thread_id, NULL, webcam_thread, (void *)&thread_data);

	while(1) {
		if (thread_data.ready) {
			break;
		}
	}
	std::cout << "Webcam ready!" << std::endl;

	// Run the algorithm in software once so we can report the latency in CPU clock cycles. This is useful
	// for further comparisons with the accelerated hardware.
	unsigned long long total_run_time = 0;
	unsigned long long count_start = 0;

	fb = (char *)buf->map;
	std::cout << "FB pointer: " << (void *)fb <<std::endl;

	count_start = sds_clock_counter();
	draw_something_sw((unsigned int *)fb, (unsigned int *)thread_data.camera, buf->width,
					  buf->height, thread_data.webcam_x_res, thread_data.webcam_y_res, 400, 400);
	total_run_time += sds_clock_counter() - count_start;

	std::cout << "Run time for SW: " << total_run_time << std::endl;

	for(int i = 0; i < 2; i++) {
      if (sds_register_dmabuf((void *)modeset_list->bufs[i].map, modeset_list->bufs[i].gem_fd)) {
			std::cerr << "ERROR: dmabuf registration failed" << std::endl;
		}
	}

	srand(time(&start_time));
	FD_ZERO(&fds);
	memset(&v, 0, sizeof(v));
	memset(&ev, 0, sizeof(ev));
	ev.version = DRM_EVENT_CONTEXT_VERSION;
	ev.page_flip_handler = drm_page_flip_event;

	count_start = sds_clock_counter();
	draw_hardware(fd, &thread_data);

	// Loop for RUN_SECONDS while handling DRM page flip events. The pages are actually flipped in the
	// draw_hardware function; we're just calling the event handling code here
	while(time(&current_time) < start_time + RUN_SECONDS) {
		FD_SET(0, &fds);
		FD_SET(fd, &fds);
		v.tv_sec = start_time + RUN_SECONDS - current_time;

		int ret = select(fd + 1, &fds, NULL, NULL, &v);
		if (ret < 0) {
			std::cerr << "ERROR: select() failed with " << ret << std::endl;
			break;
		}
		else if (FD_ISSET(0, &fds)) {
			std::cerr << "exit due to user input" << std::endl;
			break;
		}
		else if (FD_ISSET(fd, &fds)) {
			drmHandleEvent(fd, &ev);
		}
	}
	total_run_time = sds_clock_counter() - count_start;

	// Kill the webcam thread and wait for it to return
	thread_data.stop = true;
	pthread_join(thread_id, NULL);

	// Print statistics
	std::cout << "Num frames: " << modeset_list->num_frames << ", HW time: " << modeset_list->total_run_time
			<< ", CPU time: " << total_run_time << std::endl;

	std::cout << "Average CPU cycles per frame: " <<
			modeset_list->total_run_time / modeset_list->num_frames << std::endl;

	double fps = (modeset_list->num_frames) / (total_run_time / 666666666.0);

	std::cout << "Averaged " << fps << " frames per second" << std::endl;

	for (int i = 0; i < 2; i++) {
		buf = &modeset_list->bufs[i];
		if (sds_unregister_dmabuf((void *)buf->map, buf->gem_fd)) {
			std::cerr << "ERROR: Failed to unregister dmabuf" << std::endl;
		}
	}

	///////////////////////////////////////////////////////////////////////////////

	// Wait for any pending page flip events and unregister the framebuffers
	drm_cleanup(fd, drm_page_flip_event, num_modeset_dev);

	close(fd);
	return 0;
}

