/* File: /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/.cf_work/portinfo.c */
#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "portinfo.h"

#include "stdio.h"  // for printf

#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_sg_dm.h"
#include "axi_lite_dm.h"

extern accel_info_t _sds__p0_img_process_0;

axi_dma_sg_channel_info_t _p0_datamover_0_channel_send = {
  .name = "xilinx-axidma.0chan0",
  .state = 0
};

axi_dma_sg_channel_info_t _p0_datamover_0_channel_receive = {
  .name = "xilinx-axidma.0chan1",
  .state = 0
};

axi_lite_info_t _p0_swinst_img_process_0_cmd_img_process_info = {
  .accel_info = &_sds__p0_img_process_0,
  .reg_name = "0x28"
};

axi_dma_sg_transaction_info_t _p0_swinst_img_process_0_rgb_data_in_info = {
  .dma_channel_info = &_p0_datamover_0_channel_send,
  .port_id = 0,
  .flag = (0 | CF_FLAG_CACHE_FLUSH_INVALIDATE)
};

axi_dma_sg_transaction_info_t _p0_swinst_img_process_0_rgb_data_out_info = {
  .dma_channel_info = &_p0_datamover_0_channel_receive,
  .port_id = 0,
  .flag = (0 | CF_FLAG_CACHE_FLUSH_INVALIDATE)
};

axi_lite_info_t _p0_swinst_img_process_0_isobelInvert_info = {
  .accel_info = &_sds__p0_img_process_0,
  .reg_name = "0x80"
};

axi_lite_info_t _p0_swinst_img_process_0_iminsobelSensitivity_info = {
  .accel_info = &_sds__p0_img_process_0,
  .reg_name = "0x84"
};

axi_lite_info_t _p0_swinst_img_process_0_imaxsobelSensitivity_info = {
  .accel_info = &_sds__p0_img_process_0,
  .reg_name = "0x88"
};

struct _p0_swblk_img_process _p0_swinst_img_process_0 = {
  .cmd_img_process = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_cmd_img_process_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .rgb_data_in = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_rgb_data_in_info, 
		.open_i = &axi_dma_sg_open, 
		.close_i = &axi_dma_sg_close },
		.send_i = &axi_dma_sg_send_i },
  .rgb_data_out = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_rgb_data_out_info, 
		.open_i = &axi_dma_sg_open, 
		.close_i = &axi_dma_sg_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_sg_recv_i },
  .isobelInvert = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_isobelInvert_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .iminsobelSensitivity = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_iminsobelSensitivity_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .imaxsobelSensitivity = { .base = { 
		.channel_info = &_p0_swinst_img_process_0_imaxsobelSensitivity_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
};

void _p0_cf_open_port (cf_port_base_t *port)
{
  port->open_i(port, NULL);
}

void _p0_cf_framework_open(int first)
{
  cf_context_init();
  xlnkCounterMap();
  _p0_cf_register(first);
  cf_get_current_context();
  accel_open(&_sds__p0_img_process_0);
  _p0_cf_open_port( &_p0_swinst_img_process_0.cmd_img_process.base );
  _p0_cf_open_port( &_p0_swinst_img_process_0.rgb_data_in.base );
  _p0_cf_open_port( &_p0_swinst_img_process_0.rgb_data_out.base );
  _p0_cf_open_port( &_p0_swinst_img_process_0.isobelInvert.base );
  _p0_cf_open_port( &_p0_swinst_img_process_0.iminsobelSensitivity.base );
  _p0_cf_open_port( &_p0_swinst_img_process_0.imaxsobelSensitivity.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_img_process_0.cmd_img_process, NULL);
  cf_close_i( &_p0_swinst_img_process_0.rgb_data_in, NULL);
  cf_close_i( &_p0_swinst_img_process_0.rgb_data_out, NULL);
  cf_close_i( &_p0_swinst_img_process_0.isobelInvert, NULL);
  cf_close_i( &_p0_swinst_img_process_0.iminsobelSensitivity, NULL);
  cf_close_i( &_p0_swinst_img_process_0.imaxsobelSensitivity, NULL);
  accel_close(&_sds__p0_img_process_0);
  _p0_cf_unregister(last);
}

#define TOTAL_PARTITIONS 1
int current_partition_num = 0;
struct {
  void (*open)(int);
  void (*close)(int);
}

_ptable[TOTAL_PARTITIONS]  = {
    {.open = &_p0_cf_framework_open, .close= &_p0_cf_framework_close}, 
};

void switch_to_next_partition(int partition_num)
{
#ifdef __linux__
  if (current_partition_num != partition_num) {
    _ptable[current_partition_num].close(0);
    char buf[128];
    sprintf(buf, "cat /mnt/_sds/_p%d_.bin > /dev/xdevcfg", partition_num);
    system(buf);
    _ptable[partition_num].open(0);
    current_partition_num = partition_num;
  }
#endif
}

void init_first_partition() __attribute__ ((constructor));
void close_last_partition() __attribute__ ((destructor));
void init_first_partition()
{
    current_partition_num = 0;
    _ptable[current_partition_num].open(1);
}


void close_last_partition()
{
#ifdef PERF_EST
    apf_perf_estimation_exit();
#endif
    _ptable[current_partition_num].close(1);
    current_partition_num = 0;
}

