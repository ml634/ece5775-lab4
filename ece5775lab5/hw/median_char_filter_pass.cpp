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
 *     (c) Copyright 2011 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"
#include "image_demo.h"

#define MF_SIZE 9
#define MF_SIZE_MINUS1 8
#define MF_SIZE_MINUS2 7
// MF_MID is index of mid that is 0 based
#define MF_MID 5
#define MF_MID_MINUS1 4

typedef ap_window<unsigned char,MF_SIZE,MF_SIZE> MF_WINDOW;
typedef ap_linebuffer<unsigned short,MF_SIZE_MINUS1, NUMCOLS> MEDIAN_LINE_BUFFER;

ap_uint<2> lineBuff0;
ap_uint<2> lineBuff1;
ap_uint<2> lineBuff2;
ap_uint<2> lineBuff3;  
ap_uint<2> lineBuff4;
ap_uint<2> lineBuff5;
ap_uint<2> lineBuff6;
ap_uint<2> lineBuff7;  


////Median Filter with a passthrough of the current color pixel
void median_char_filter_pass( ap_uint<8> input_pix[NUMROWS*NUMCOLS], ap_uint<8> median_pix[NUMROWS*NUMCOLS])
{
	#pragma AP INTERFACE ap_fifo port=input_pix
	#pragma AP INTERFACE ap_fifo port=median_pix

	MEDIAN_LINE_BUFFER lineBuffer;
	MF_WINDOW window;


	int row, col, windowRow, windowCol;
	unsigned short pixel_in;

	//range of NUMROWS + half of window to filter entire frame
	for (row = 0 ; row < NUMROWS + MF_MID; row ++) {
		for (col = 0; col < NUMCOLS + MF_MID; col ++) {

	#pragma AP PIPELINE II = 1
			//read pixel value only within frame 			
			if(row < NUMROWS && col < NUMCOLS)  { pixel_in = input_pix[row*NUMCOLS + col];} 			
			
			//change [0,255] to [0,1] for easy counting			
                        // this need to change based on 1, 2, 3, 0 values for colors?
                        // probably should just leave pixel in values as is
                        // FINDME: REmoving because keeping pixel values as 1, 2, 3, or 0
			// if (pixel_in == 255) {pixel_in = 1;}
			// else {pixel_in = 0;}

//update lineBuffer
			if ( col < NUMCOLS) {
				//store bottom 4 values to use in window
				lineBuff0 = lineBuffer.getval(0, col);
				lineBuff1 = lineBuffer.getval(1, col);
				lineBuff2 = lineBuffer.getval(2, col);
				lineBuff3 = lineBuffer.getval(3, col);
		                lineBuff4 = lineBuffer.getval(4, col);
				lineBuff5 = lineBuffer.getval(5, col);
				lineBuff6 = lineBuffer.getval(6, col);
				lineBuff7 = lineBuffer.getval(7, col);
				//update linebuffer by shifting 1 column by 1 up (0 being bottom of buffer) 
				lineBuffer.shift_up(col);

			}

			//insert new pixel into bottom (0th row) linebuffer
			if ( row < NUMROWS && col < NUMCOLS ) { lineBuffer.insert_bottom( pixel_in ,col ); }

//update window
			//shift window left and fill new value into 0th col 
			window.shift_left();

			if ( col < NUMCOLS ) {       
				window.insert( lineBuff0, 1, 0);
				window.insert( lineBuff1, 2, 0);
				window.insert( lineBuff2, 3, 0);
				window.insert( lineBuff3, 4, 0);
        window.insert( lineBuff4, 5, 0);
				window.insert( lineBuff5, 6, 0);
				window.insert( lineBuff6, 7, 0);
				window.insert( lineBuff7, 8, 0);
				window.insert( pixel_in, 0, 0);
			}
//count window and assign value out
// FINDME: Needs to be updated to assign the correct output
//    countTwos, countThrees, etc
	
			unsigned int countOnes = 0;
			unsigned int countTwos = 0;
			unsigned int countThrees = 0;
			
			for (windowRow = 0; windowRow < MF_SIZE; windowRow ++) {
				for (windowCol = 0; windowCol < MF_SIZE; windowCol ++) {
                                        if (window.getval(windowRow, windowCol) == 1) {
                                           countOnes++;
                                        }
                                        else if (window.getval(windowRow, windowCol) == 2) {
                                           countTwos++;
                                        }
                                        else if (window.getval(windowRow, windowCol) == 3) {
                                           countThrees++;
                                        }
					// countOnes += window.getval(windowRow,windowCol);

				}
		
			}

			// if ( row < NUMROWS && col < NUMCOLS ) {  median_pix[row*NUMCOLS + col] = (countOnes > 50) ? 255:0; }
			if ( row < NUMROWS && col < NUMCOLS ) {  
                           if (countOnes > 50) { median_pix[row*NUMCOLS + col] = 1; } // red
                           else if (countTwos > 50) { median_pix[row*NUMCOLS + col] = 2; } // blue
                           else if (countThrees > 50) { median_pix[row*NUMCOLS + col] = 3; } // green
                           else median_pix[row*NUMCOLS + col] = 0; // black (background)
                        }

		}

	}

}

