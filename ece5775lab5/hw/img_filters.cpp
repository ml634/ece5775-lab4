/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2013 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/



#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"
//#include "ap_video.h"

ap_uint<8> yc_data_segmented[NUMROWS*NUMCOLS]; 
ap_uint<8> yc_data_segmented_out[NUMROWS*NUMCOLS]; 
ap_uint<8> yc_data_segmented_out_filter[NUMROWS*NUMCOLS]; 
ap_uint<8> yc_data_combined[NUMROWS*NUMCOLS];

unsigned int com_temp[6];
unsigned int com_temp_after_corners[6];

unsigned int corners_temp[16];

// add more parameters here to pass center of masses, points, etc to main
void img_process( unsigned int *rgb_data_in, unsigned int *rgb_data_out, unsigned int *frame_com, unsigned int * frame_corners)
{
   #pragma AP DATAFLOW
   // int i =0;
   //printf("starting img_process\n");
   // Convert rgb to YUV and threshold to segment red robot, blue robot, and green goal
   // data in, data out
   rgb_pad2ycbcr(rgb_data_in, yc_data_segmented);
   //printf("rgb2ycbcr done\n");

   // median filter
   // median_char_filter_pass(yc_data_segmented_out,yc_data_segmented_out_filter );
   // data in, data out
   //median_char_filter_pass(yc_data_segmented, yc_data_segmented_out_filter );
   //printf("median done\n");

   // calculate the center of mass for red robot, blue robot, and green goal
   // data in, data out, local com out
   centerOfMass(yc_data_segmented, yc_data_segmented_out, com_temp);
   //printf("com done\n");

   // Process image to capture corners for both robots
   //call median filter for each RBG --> and corner detect for each filtered output RBG

   // FINDME: Bypassing corner detect to test median filter
   // data in, data out, local com from com func in, unchanged com out, local corners out
   corner_detect( yc_data_segmented_out, yc_data_combined, com_temp, com_temp_after_corners, corners_temp);
   // printf("corner done\n");
      
   //ycbcr2rgb_pad(yc_data_combined, rgb_data_out, frame_com ,frame_corners );
   // data int, data out, local com after corners in, local corners in, frame com out, frame corners out
   ycbcr2rgb_pad(yc_data_combined, rgb_data_out, com_temp_after_corners, corners_temp, frame_com, frame_corners);
   //printf("obviously ycbcr2rgb done\n");

}
