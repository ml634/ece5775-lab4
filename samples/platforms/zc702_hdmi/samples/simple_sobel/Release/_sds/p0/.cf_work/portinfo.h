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
