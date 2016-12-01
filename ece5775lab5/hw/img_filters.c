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

unsigned short yc_data_red[NUMROWS*NUMCOLS]; 
unsigned short yc_data_blue[NUMROWS*NUMCOLS]; 
unsigned short yc_data_green[NUMROWS*NUMCOLS];

unsigned short yc_data_red_out[NUMROWS*NUMCOLS]; 
unsigned short yc_data_blue_out[NUMROWS*NUMCOLS]; 
unsigned short yc_data_green_out[NUMROWS*NUMCOLS]; 

unsigned short yc_data_red_out_filtered[NUMROWS*NUMCOLS];
unsigned short yc_data_blue_out_filtered[NUMROWS*NUMCOLS];  
unsigned short yc_data_green_out_filtered[NUMROWS*NUMCOLS];

unsigned short yc_data_combined[NUMROWS*NUMCOLS];
unsigned short yc_data_combined_filter[NUMROWS*NUMCOLS];

// local arrays to hold blue and red robot center of mass points
unsigned int blueCOM[2];
unsigned int redCOM[2];
unsigned int greenCOM[2];

// local arrays for red and blue robot corner points
unsigned int blueCorners[8];
unsigned int redCorners[8];

// add more parameters here to pass center of masses, points, etc to main
void img_process( unsigned int *rgb_data_in, unsigned int *rgb_data_out, unsigned int *frame_com, unsigned int * frame_corners)
{
    
   int i =0;

   // Convert rgb to YUV and threshold to segment red robot, blue robot, and green goal
   rgb_pad2ycbcr(rgb_data_in, yc_data_red, 'r');
   rgb_pad2ycbcr(rgb_data_in, yc_data_blue, 'b');
   rgb_pad2ycbcr(rgb_data_in, yc_data_green, 'g');

   // calculate the center of mass for red robot, blue robot, and green goal
   centerOfMass(yc_data_red, yc_data_red_out, frame_com, 'r');
   centerOfMass(yc_data_blue, yc_data_blue_out, frame_com, 'b');
   centerOfMass(yc_data_green, yc_data_green_out, frame_com, 'g');

   // Process image to capture corners for both robots
   //call median filter for each RBG --> and corner detect for each filtered output RBG
 
   //median_char_filter_pass(yc_data_red_out,yc_data_red_out_filtered );
   //median_char_filter_pass(yc_data_blue_out,yc_data_blue_out_filtered );
   //median_char_filter_pass(yc_data_green_out,yc_data_green_out_filtered );

   corner_detect(yc_data_red_out, yc_data_combined, frame_corners, 'r' );
   
   // OR separate thresholded images into one image for output to screen
   //for (i = 0; i < NUMROWS*NUMCOLS; i++) {
      // yc_data_combined[i] = yc_data_red_out[i] | yc_data_blue_out[i];
      //yc_data_combined[i] = yc_data_red[i] | yc_data_blue[i] |  yc_data_green[i];
   //}
   
   
   ycbcr2rgb_pad(yc_data_combined,rgb_data_out);

}


