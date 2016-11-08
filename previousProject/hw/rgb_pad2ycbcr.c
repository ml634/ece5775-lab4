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
#include "img_cores.h"

void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned short  yc_data_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)] )
{
#pragma AP INTERFACE ap_fifo port=rgb_data_in
#pragma AP INTERFACE ap_fifo port=yc_data_out
	unsigned char in_R, in_G, in_B;

	int row;
	int col;

	for(row = 0; row < NUMROWS; row++){
		for(col = 0; col < NUMCOLS; col++){
#pragma AP PIPELINE II = 1
			unsigned short  cr = 0;
			unsigned int  cb = 0;
			unsigned short  y = 0;
			unsigned short   pixel_out0, pixel_out1; 
			unsigned int pixel;
			unsigned int temp_mul1, temp_mul2, temp_mul3, temp_add;

			pixel = rgb_data_in[row*NUMPADCOLS+col];

			// extract B, R, G colors from 32-bit pixel.
			// [X, R, G, B] format (each 8-bit)
			in_B = ((pixel) & 0x000000FF);
			in_G = (((pixel) >>8 )& 0x000000FF);
			in_R = (((pixel) >>16)& 0x000000FF);

			// use of hardware DSP blocks for multiplication
			// provided amplification of 256 to each value of R, G, B
			temp_mul1 = 128 * in_R;
			temp_mul2 = 85 * in_G;
			temp_mul3 = 43 * in_B;
			temp_add = 32768 + temp_mul1 - temp_mul2 - temp_mul3;

			// divide the above number by 256
			// only calculate cb. cb is enought to threshold red color.
			cb = temp_add >> 8;

			// Threshold the ycbcr image to segragate red object.
			// Fine tune the thresholding later on.        
			// Only the red object is shown as white, others are black dots.
			// 0 = black and 255 = white.
			if( ( (row & 3) == 0 ) && ( (col & 3) == 0) ) {
				yc_data_out[ ((row*NUMCOLS)>>4) + (col>>2) ] = ( cb > 164 ) ? 255 : 0;
			}
		}

		// Remaining pixels in the buffer are just simple dumped into temporary
		// variable.
		for (col = NUMCOLS; col < NUMPADCOLS; col++) {
#pragma AP PIPELINE II=1
			volatile unsigned int junkPixel;
			junkPixel = rgb_data_in[row*NUMPADCOLS + col];
		}
	}
}
