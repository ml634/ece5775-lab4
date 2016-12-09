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

char yc_data_segmented[NUMROWS*NUMCOLS]; 
char yc_data_segmented_out[NUMROWS*NUMCOLS]; 
char yc_data_segmented_out_filter[NUMROWS*NUMCOLS]; 

char yc_data_combined[NUMROWS*NUMCOLS];

unsigned int com_temp[6];

// add more parameters here to pass center of masses, points, etc to main
void img_process( unsigned int *rgb_data_in, unsigned int *rgb_data_out, unsigned int *frame_com, unsigned int * frame_corners)
{
    
   // int i =0;

   // Convert rgb to YUV and threshold to segment red robot, blue robot, and green goal
   rgb_pad2ycbcr(rgb_data_in, yc_data_segmented);

   // median filter
   // median_char_filter_pass(yc_data_segmented_out,yc_data_segmented_out_filter );
   // median_char_filter_pass(yc_data_segmented, yc_data_segmented_out_filter );

   // calculate the center of mass for red robot, blue robot, and green goal
   // centerOfMass(yc_data_segmented, yc_data_segmented_out, frame_com);
   centerOfMass(yc_data_segmented, yc_data_segmented_out, com_temp);

   // Process image to capture corners for both robots
   //call median filter for each RBG --> and corner detect for each filtered output RBG

   // FINDME: Bypassing corner detect to test median filter
   // corner_detect( yc_data_segmented_out , yc_data_combined, frame_corners);
      
   // ycbcr2rgb_pad(yc_data_combined, rgb_data_out, frame_com ,frame_corners );
   // ycbcr2rgb_pad(yc_data_segmented_out_filter, rgb_data_out, frame_com ,frame_corners );
   // FINDME: Outputs should always be in the last function
   ycbcr2rgb_pad(yc_data_segmented_out, com_temp, rgb_data_out, frame_com ,frame_corners );

}
