/* File: /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/.cf_work/devreg.c */
#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "stdio.h"  // for getting printf
#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_sg_dm.h"
#include "axi_lite_dm.h"

axi_dma_sg_info_t _p0_datamover_0 = {
  .name = "xilinx-axidma",
  .seq_num = 0,
  .base_addr = 0x80400000,
  .addr_range = 0x10000,
  .num_channels = 2,
  .dir_chan0 = XLNK_DMA_TO_DEV,
  .dir_chan1 = XLNK_DMA_FROM_DEV,
  .poll_mode_chan0 = 0,
  .poll_mode_chan1 = 0,
  .irq_send = 64,
  .irq_recv = 65,
};

accel_info_t _sds__p0_img_process_0 = {
  .device_id = 4,
  .phys_base_addr = 0x83c00000,
  .addr_range = 0x10000,
  .ip_type = "axis_acc_adapter"
};

void _p0_cf_register(int first)
{
  int xlnk_init_done = cf_xlnk_open(first);
  if (xlnk_init_done == 0) {
    axi_dma_sg_register(&_p0_datamover_0);
    accel_register(&_sds__p0_img_process_0);
    cf_xlnk_init(first);
  }
  else if (xlnk_init_done <0) {
    fprintf(stderr, "ERROR: unable to open xlnk %d\n", xlnk_init_done);
  }
  else {
  }
}

void _p0_cf_unregister(int last)
{
  axi_dma_sg_unregister(&_p0_datamover_0);
  accel_unregister(&_sds__p0_img_process_0);
  xlnkClose(last,NULL);
}

