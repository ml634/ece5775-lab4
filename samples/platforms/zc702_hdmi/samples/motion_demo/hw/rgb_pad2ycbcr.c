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

void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned char  yc_data_out[NUMROWS*NUMCOLS])
{

  unsigned char in_R, in_G, in_B;

  int row;
  int col;



//within image range
  for(row = 100; row < NUMROWS-100; row++){
    for(col = 0; col < NUMCOLS; col++){
#pragma AP PIPELINE II = 1
        unsigned short  u = 0;
        unsigned short  v = 0;
        unsigned short  y = 0;
		unsigned short   pixel_out0, pixel_out1; 
        unsigned int pixel;
	
		pixel = rgb_data_in[row*NUMPADCOLS+col];
		in_B = ((pixel) & 0x000000FF);
		in_G = (((pixel) >>8 )& 0x000000FF);
		in_R = (((pixel) >>16)& 0x000000FF);

		y = ((66 * in_R + 129 * in_G + 25 * in_B + 128) >> 8) + 16;
        u =  ( (112*in_B - 74*in_G -38*in_R) >> 8) +128; // u
        v = ( (112*in_R - 94*in_G -18*in_B) >> 8)  +128; // v

 		// assign different colored pixels to different greyscale values to distinguish them from each other
		if (v > 160 && y < 130) { // && u > 74) { // try adding Y value check?
            // red object
            yc_data_out[row*NUMCOLS+col] = 1; // red objects will have pixel value of 1
         } 
        
		else if (u > 150) {
            // blue object
            yc_data_out[row*NUMCOLS+col] = 2; // blue objects will have pixel value of 2
		}

		else { 
            // black object (background)
            yc_data_out[row*NUMCOLS+col] = 0;
         }

    }

    for (col = NUMCOLS; col < NUMPADCOLS; col++) {
        volatile unsigned int pixel1;
#pragma AP PIPELINE II = 1
	pixel1 = rgb_data_in[row*NUMPADCOLS+col];
    }
 }



}

