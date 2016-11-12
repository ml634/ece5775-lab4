#ifndef _SDS_PORTINFO_H
#define _SDS_PORTINFO_H
/* File: /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/.cf_work/portinfo.h */
#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_img_process {
  cf_port_send_t cmd_img_process;
  cf_port_send_t rgb_data_in;
  cf_port_receive_t rgb_data_out;
  cf_port_send_t isobelInvert;
  cf_port_send_t iminsobelSensitivity;
  cf_port_send_t imaxsobelSensitivity;
};

extern struct _p0_swblk_img_process _p0_swinst_img_process_0;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
#ifdef __cplusplus
extern "C" {
#endif
void switch_to_next_partition(int);
void init_first_partition();
void close_last_partition();
#ifdef __cplusplus
};
#endif /* extern "C" */
#endif /* _SDS_PORTINFO_H_ */
