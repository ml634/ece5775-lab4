/*
 * drm.cpp
 *
 *  Created on: Feb 27, 2015
 *      Author: ra
 */

#include <drm.h>
#include <fcntl.h>
#include <cstdlib>
#include <iostream>
#include <cstring>
#include <errno.h>
#include <linux/ioctl.h>
#include <unistd.h>
#include <sys/mman.h>

extern drm_modeset_dev *modeset_list;

int drm_open(int *out, const char *node)
{
	int fd, ret;
	uint64_t has_dumb;

	fd = open(node, O_RDWR | O_CLOEXEC);
	if (fd < 0) {
		ret = -errno;
		std::cerr << "ERROR: unable to open DRM node" << std::endl;
		return ret;
	}

	if (drmGetCap(fd, DRM_CAP_DUMB_BUFFER, &has_dumb) < 0 || !has_dumb) {
		std::cerr << "ERROR: DRM node does not support dumb buffers" << std::endl;
		close(fd);
		return -EOPNOTSUPP;
	}

	*out = fd;
	return 0;
}

int drm_find_crtc(int fd, drmModeRes *res, drmModeConnector *conn, drm_modeset_dev *dev)
{
	drmModeEncoder *enc;
	uint32_t crtc;
	drm_modeset_dev *iter;

	// First try the currently connected encoder + crtc
	if (conn->encoder_id) {
		enc = drmModeGetEncoder(fd, conn->encoder_id);
	}
	else {
		enc = NULL;
	}

	if (enc) {
		if (enc->crtc_id) {
			crtc = enc->crtc_id;
			for (iter = modeset_list; iter; iter = iter->next) {
				if (iter->crtc == crtc) {
					crtc = -1;
					break;
				}
			}

			if (crtc >= 0) {
				drmModeFreeEncoder(enc);
				dev->crtc = crtc;
				return 0;
			}
		}
		drmModeFreeEncoder(enc);
	}

	/* If the connector is not currently bound to an encoder or if the encoder+crtc is already used
	 * by another connector, iterate all other available encoders to find a matching CRTC */
	for (int32_t i = 0; i < conn->count_encoders; i++) {
		enc = drmModeGetEncoder(fd, conn->encoders[i]);
		if (!enc) {
			std::cerr << "Cannot retrieve encoder" << i << std::endl;
			continue;
		}

		// Iterate all global CRTCs
		for (int32_t j = 0; j < res->count_crtcs; j++) {
			// Check if the CRTC works with the encoder
			if (!(enc->possible_crtcs & (1 << j))) {
				continue;
			}

			// Check that no other device already uses this CRTC
			crtc = res->crtcs[j];
			for (iter = modeset_list; iter; iter = iter->next) {
				if (iter->crtc == crtc) {
					crtc = -1;
					break;
				}
			}

			if (crtc >= 0) {
				drmModeFreeEncoder(enc);
				dev->crtc = crtc;
				return 0;
			}
		}

		drmModeFreeEncoder(enc);
	}

	std::cerr << "Cannot find suitable CRTC for connector " << conn->connector_id << std::endl;
	return -ENOENT;
}

void drm_destroy_fb(int fd, drm_modeset_buf *buf)
{
	struct drm_mode_destroy_dumb dreq;

	/* Unmap the buffer */
	munmap(buf->map, buf->size);

	/* Delete the framebuffer */
	drmModeRmFB(fd, buf->fb);

	/* Delete the dumb buffer */
	memset(&dreq, 0, sizeof(dreq));
	dreq.handle = buf->handle;
	drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
}


int drm_create_fb(int fd, drm_modeset_buf *buf)
{
	drm_mode_create_dumb creq;
	drm_mode_destroy_dumb dreq;
	drm_mode_map_dumb mreq;
	drm_prime_handle prime;

	int ret;

	/* Create the dumb buffer */
	memset(&creq, 0, sizeof(creq));
	creq.width = buf->width;
	creq.height = buf->height;
	creq.bpp = 32;
	ret = drmIoctl(fd, DRM_IOCTL_MODE_CREATE_DUMB, &creq);
	if (ret < 0) {
		std::cerr << "Cannot create dumb buffer" << std::endl;
		return -errno;
	}
	buf->stride = creq.pitch;
	buf->size = creq.size;
	buf->handle = creq.handle;

	memset(&prime, 0, sizeof(prime));
	prime.handle = buf->handle;
	ret = drmIoctl(fd, DRM_IOCTL_PRIME_HANDLE_TO_FD, &prime);
	if (ret) {
		std::cerr << "PRIME_HANDLE_TO_FD failed" << std::endl;
		goto err_destroy;
	}

	buf->gem_fd = prime.fd;

	// Create framebuffer object for the dumb buffer
	ret = drmModeAddFB(fd, buf->width, buf->height, 24, 32, buf->stride, buf->handle, &buf->fb);
	if (ret) {
		std::cerr << "Cannot create framebuffer" << std::endl;
		ret = -errno;
		goto err_destroy;
	}

	// Prepare buffer for memory mapping
	memset(&mreq, 0, sizeof(mreq));
	mreq.handle = buf->handle;
	ret = drmIoctl(fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq);
	if (ret) {
		std::cerr << "Cannot map dumb buffer" << std::endl;
		ret = -errno;
		goto err_fb;
	}

	// Perform the actual memory mapping
	buf->map = (uint8_t *)mmap(0, buf->size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, mreq.offset);

	if (buf->map == MAP_FAILED) {
		std::cerr << "Cannot mmap dumb buffer" << std::endl;
		ret = -errno;
		goto err_fb;
	}

	// Initialize the buffer to zeros
	memset(buf->map, 0, buf->size);

	return 0;

err_fb:
	drmModeRmFB(fd, buf->fb);
err_destroy:
	memset(&dreq, 0, sizeof(dreq));
	dreq.handle = buf->handle;
	drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
	return ret;
}

int drm_setup_dev(int fd, drmModeRes *res, drmModeConnector *conn, drm_modeset_dev *dev)
{
	int ret;

	// Check if the monitor is connected
	if (conn->connection != DRM_MODE_CONNECTED) {
		std::cerr << "Ignoring unused connector " << conn->connector_id << std::endl;
		return -ENOENT;
	}

	// Check if there is at least one valid mode
	if (conn->count_modes == 0) {
		std::cerr << "No valid modes for connector " << conn->connector_id << std::endl;
		return -EFAULT;
	}

	// Copy the mode information into our device structure
	memcpy(&dev->mode, &conn->modes[0], sizeof(dev->mode));
	dev->bufs[0].width = conn->modes[0].hdisplay;
	dev->bufs[0].height = conn->modes[0].vdisplay;
	dev->bufs[1].width = conn->modes[0].hdisplay;
	dev->bufs[1].height = conn->modes[0].vdisplay;

	std::cout << "Setting mode " << dev->bufs[0].width << "x" << dev->bufs[0].height << " for connector " <<
			     conn->connector_id << std::endl;

	// Find a CRTC for this connector
	ret = drm_find_crtc(fd, res, conn, dev);
	if (ret) {
		std::cerr << "No valid CRTC for connector " << conn->connector_id << std::endl;
		return ret;
	}

	/* Create framebuffer #1 for this CRTC */
	ret = drm_create_fb(fd, &dev->bufs[0]);
	if (ret) {
		std::cerr << "Unable to create framebuffer 1 for connector " << conn->connector_id << std::endl;
		return ret;
	}

	/* Create framebuffer #2 for this CRTC */
	ret = drm_create_fb(fd, &dev->bufs[1]);
	if (ret) {
		std::cerr << "Unable to create framebuffer 2 for connector " << conn->connector_id << std::endl;
		drm_destroy_fb(fd, &dev->bufs[0]);
		return ret;
	}

	return 0;
}

int drm_prepare(int fd, int *num_modeset_dev)
{
	drmModeRes *res;
	drmModeConnector *connector;
	drm_modeset_dev *dev;
	int ret;

	res = drmModeGetResources(fd);
	if (!res) {
		std::cerr << "ERROR: Cannot retrieve DRM resources" << std::endl;
		return -errno;
	}

	// Iterate across all connectors
	for(int i = 0; i < res->count_connectors; i++) {
		// Get information for each connector
		connector = drmModeGetConnector(fd, res->connectors[i]);
		if (!connector) {
			std::cerr << "ERROR: Cannot retrieve DRM connector " << i << ":" << res->connectors[i] << std::endl;
			continue;
		}

		dev = (drm_modeset_dev *)malloc(sizeof(struct drm_modeset_dev));
		memset(dev, 0, sizeof(struct drm_modeset_dev));
		dev->conn = connector->connector_id;

		// Call helper function to prepare this connector
		ret = drm_setup_dev(fd, res, connector, dev);
		if (ret) {
			if (ret != -ENOENT) {
				errno = -ret;
				std::cerr << "ERROR: Cannot set up device for connector " << i << std::endl;
			}
			free(dev);
			drmModeFreeConnector(connector);
			continue;
		}

		// Free connector data and link device into global list
		drmModeFreeConnector(connector);
		dev->next = modeset_list;
		modeset_list = dev;
		(*num_modeset_dev)++;
	}

	// Free resources again
	drmModeFreeResources(res);
	return 0;
}

void drm_cleanup(int fd, page_flip_handler handler, int num_modeset_dev)
{
	drm_modeset_dev *iter, *next;
	drmEventContext ev;

	memset(&ev, 0, sizeof(ev));
	ev.version = DRM_EVENT_CONTEXT_VERSION;
	ev.page_flip_handler = handler;

	iter = modeset_list;
	for (int i = 0; i < num_modeset_dev; i++) {
		next = iter->next;

		// Wait for any pending page flips to complete
		iter->cleanup = true;
		while(iter->pflip_pending) {
			if (drmHandleEvent(fd, &ev))
				break;
		}

		// Restore saved CRTC configurations
		drmModeSetCrtc(fd,
					   iter->saved_crtc->crtc_id,
					   iter->saved_crtc->buffer_id,
					   iter->saved_crtc->x,
					   iter->saved_crtc->y,
					   &iter->conn,
					   1,
					   &iter->saved_crtc->mode);
		drmModeFreeCrtc(iter->saved_crtc);

		/* Destroy the framebuffers */
		drm_destroy_fb(fd, &iter->bufs[1]);
		drm_destroy_fb(fd, &iter->bufs[0]);

		// Free allocated memory
		free(iter);
		iter = next;
	}
}


