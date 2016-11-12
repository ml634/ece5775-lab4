/*
 * drm.h
 *
 *  Created on: Feb 27, 2015
 *      Author: ra
 */

#ifndef DRM_H_
#define DRM_H_

#include <sys/types.h>
#include <xf86drm.h>
#include <xf86drmMode.h>
#include <libdrm/drm.h>
#include <libdrm/drm_mode.h>


struct drm_modeset_buf {
	uint32_t width;
	uint32_t height;
	uint32_t stride;
	uint32_t size;
	uint32_t handle;
	uint8_t *map;
	uint32_t gem_fd;
	uint32_t fb;
};

struct drm_modeset_dev {
	struct drm_modeset_dev *next;

	unsigned int front_buf;
	bool pflip_pending;
	bool cleanup;
	struct drm_modeset_buf bufs[2];

	drmModeModeInfo mode;

	uint32_t conn;
	uint32_t crtc;
	drmModeCrtc *saved_crtc;
	unsigned long long total_run_time;
	int num_frames;
};

typedef void (*page_flip_handler)(int fd,
		  unsigned int sequence,
		  unsigned int tv_sec,
		  unsigned int tv_usec,
		  void *user_data);

void drm_cleanup(int fd, page_flip_handler handler, int num_modeset_dev);
int drm_prepare(int fd, int *num_modeset_dev);
int drm_find_crtc(int fd, drmModeRes *res, drmModeConnector *conn, drm_modeset_dev *dev);
int drm_create_fb(int fd, drm_modeset_buf *buf);
void drm_destroy_fb(int fd, drm_modeset_buf *buf);
int drm_find_crtc(int fd, drmModeRes *res, drmModeConnector *conn, struct modeset_dev *dev);
int drm_open(int *out, const char *node);
int drm_setup_dev(int fd, drmModeRes *res, drmModeConnector *conn, drm_modeset_dev *dev);

#endif /* DRM_H_ */
