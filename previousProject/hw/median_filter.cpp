#include <stdio.h>
#include "ap_video.h"
#include "frame_size.h"
#include "img_cores.h"
#include "hls_stream.h"

#define ABSDIFF(x,y)    ((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)
typedef ap_window< ap_uint<1> , 5, 5> WINDOW;
typedef ap_linebuffer< ap_uint<1> , 4, NUMCOLS/SCALE_DOWN_FACTOR> LINE_BUFFER;

void median_filter(unsigned short median_space_in[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR * SCALE_DOWN_FACTOR)], unsigned short median_space_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR * SCALE_DOWN_FACTOR)])
{
#pragma AP INTERFACE ap_fifo port=median_space_in
#pragma AP INTERFACE ap_fifo port=median_space_out
	// line buffer and window to reduce the storage space required for storing 
	// video frames
	LINE_BUFFER lineBuffer;
	WINDOW window; // 5x5 window which allows  5x5 median filter

	int row;
	int col;
	unsigned char pixel_out; // output pixel for (row,col) location
	ap_uint<1> pixel_in;
	unsigned char pixel_in_byte;
	unsigned char pixel_out_byte;

	ap_uint<1> lineBuff0;
	ap_uint<1> lineBuff1;
	ap_uint<1> lineBuff2;
	ap_uint<1> lineBuff3;  

	unsigned int numRows = NUMROWS>>SCALE_DOWN_FACTOR_SHIFT;
	unsigned int numCols = NUMCOLS>>SCALE_DOWN_FACTOR_SHIFT; 
        unsigned int color_pixel_in;

	for(row = 0; row < numRows + 1; row++){
		for(col = 0; col < numCols +1; col++){
#pragma AP PIPELINE II = 1
#pragma HLS LOOP_FLATTEN OFF

			// store the input pixel into local register
			// for fast access.
			if ( row < numRows && col < numCols) {
				pixel_in_byte  = median_space_in[row * numCols + col];
			}

			pixel_in = 0;

			if (pixel_in_byte == 255) 
				pixel_in = 1;

			// move lineBuffer values down. To make space on top row (0th)
			if ( col < numCols ) {
				lineBuff0 = lineBuffer.getval(0, col);
				lineBuff1 = lineBuffer.getval(1, col);
				lineBuff2 = lineBuffer.getval(2, col);
				lineBuff3 = lineBuffer.getval(3, col);

				lineBuffer.shift_up(col);
			}

			// insert the input pixel to the bottom which is 0th element
			if ( row < numRows && col < numCols ) {
				lineBuffer.insert_bottom(pixel_in, col);
			}

			// shift the window to left and add latest data to 0th column
			window.shift_left();

			if ( col < numCols ) {       
				window.insert( lineBuff0, 4, 0);
				window.insert( lineBuff1, 3, 0);
				window.insert( lineBuff2, 2, 0);
				window.insert( lineBuff3, 1, 0);
				window.insert( pixel_in, 0, 0);
			}

			unsigned int countOnes = 0;

			// while window buffer is warming up, assign black output
			if ( row < 4 || col < 4 || row > numRows - 1 || col > numCols - 1) {
				pixel_out = 0;
			}
			// otherwise assign the median value
			else {
				for ( unsigned int l = 0; l < 5; l++) {
					for ( unsigned int m = 0; m < 5; m++ ) {
						if(window.getval(l,m) == 1)
							countOnes += 1;
					}
				}

				// if nearby 19 pixels are white then only assign it to white, otherwise
				// keep it black 
				pixel_out = (countOnes > 14 ) ? 255 : 0;
			}

			if ( row < numRows && col < numCols ) {
				median_space_out[ row * numCols + col ] = pixel_out;
			}
		} // end of col
	} // end of row
}  // end of function
