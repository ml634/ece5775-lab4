#include "draw.h"

#pragma SDS data sys_port(fb:AFI, img:AFI)
#pragma SDS data mem_attribute(fb:NON_CACHEABLE|PHYSICAL_CONTIGUOUS)
#pragma SDS data mem_attribute(img:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern(img:SEQUENTIAL)
#pragma SDS data access_pattern(fb:SEQUENTIAL)
#pragma SDS data copy(fb[0:x_res*y_res], img[0:img_x_res*img_y_res])
int draw_something(unsigned int fb[2304000],
                   unsigned int img[307200],
                   unsigned int x_res,
                   unsigned int y_res,
                   unsigned int img_x_res,
                   unsigned int img_y_res,
                   unsigned int img_x,
                   unsigned int img_y) {
  for(unsigned int y = 0; y < y_res; y++) {
#pragma HLS LOOP_TRIPCOUNT min=900 max=1200 avg=900
    for(unsigned int x = 0; x < x_res; x++) {
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1600 max=1920 avg=1600
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
