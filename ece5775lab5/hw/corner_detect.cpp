#include <stdio.h>
#include "ap_video.h"
#include "frame_size.h"
#include "image_cores.h"
#include "hls_stream.h"

//Main function for Corner Detection
//This function includes corner detection of extreme points
void corner_detect(unsigned short median_out[NUMROWS*NUMCOLS], unsigned short corner_data_out[NUMROWS*NUMCOLS], unsigned int frame_corners[CORNER_ELEMENTS], char color)
{
#pragma AP INTERFACE ap_fifo port=median_out
#pragma AP INTERFACE ap_fifo port=corner_data_out
#pragma AP INTERFACE ap_fifo port=frame_corners
	int row;
	int col;

	unsigned short pixel_in;
	unsigned short pixel_out;
	bool isValid;

	// initial corner location
	ap_uint<11> ymax = 0;
	ap_uint<11> xmax = 0;
	ap_uint<11> xmin = NUMCOLS;
	ap_uint<11> ymin = NUMROWS;
	ap_uint<11> temp_corners[CORNER_ELEMENTS] = {0};
//#pragma AP array_partition variable=temp_corners complete dim=0

//	ap_uint<88> temp;


	static ap_uint<11> prevCorner[CORNER_ELEMENTS] = {0};
#pragma AP array_partition variable=prevCorner complete dim=0

	static ap_uint<11> fifo_frame_corners[CORNER_HISTORY_FRAME_NUMBER][CORNER_ELEMENTS] = {0};
#pragma AP array_partition variable=fifo_frame_corners complete dim=0

	static ap_uint<11> sorted_corners[CORNER_HISTORY_FRAME_NUMBER][CORNER_ELEMENTS] = {0};
#pragma AP array_partition variable=sorted_corners complete dim=0

	static unsigned int corner_frame_counter_red = 0;
	static unsigned int corner_frame_counter_blue = 0;
	unsigned int *corner_frame_counter;
	
	if (color == 'r'){
	  corner_frame_counter = &corner_frame_counter_red;
	}
	else if (color == 'b'){
	  corner_frame_counter = &corner_frame_counter_blue;
	}
	else return;

	int i,j;
	ap_uint<2> isPoint;

	for(row = 0; row < NUMROWS; row++) {
		for(col = 0; col < NUMCOLS; col++) {
		  corner_data_out[row * NUMCOLS + col] = median_out[row * NUMCOLS + col];
#pragma AP PIPELINE II = 1
#pragma HLS DEPENDENCE array inter false      

			if ( ( (row & 3) == 0 ) && ( ( (col & 3) == 0) ) ) {
				//pixel_in = median_out[ ( (row * NUMCOLS)>>SCALE_DOWN_FACTOR) + (col>>SCALE_DOWN_FACTOR_SHIFT) ];
				pixel_in = median_out[ row * NUMCOLS + col ];

				isValid = (pixel_in > 0);

				// calculate corners
				if(isValid) 
				{
					if ( col < xmin ) {
						xmin = col;
						temp_corners[0] = col;
						temp_corners[1] = row;
					}

					if( col > xmax ) {
						xmax = col;
						temp_corners[2] = col;
						temp_corners[3] = row;
					}

					if( row < ymin ) {
						ymin = row;
						temp_corners[4] = col;
						temp_corners[5] = row;	
					}

					if( row > ymax ) {
						ymax = row;
						temp_corners[6] = col;
						temp_corners[7] = row;
					}
				}

				// If there is a red color object, it will be overlapped by white color at every 4 pixels
				//corner_data_out[row * NUMPADCOLS + col] =  pixval;
			}
			//else {
				//corner_data_out[ row * NUMPADCOLS + col] = 0;
			//}
			
		} // end of col iteration
    
		// pad the remaining column entries with 0s (these values are outside screen resolution, so we don't care
		/*for (col = NUMCOLS; col < NUMPADCOLS; col++) {
#pragma AP PIPELINE II = 1
			corner_data_out[ row * NUMPADCOLS + col] = 128;
		} // print out all the corners at the end*/
		
	} // end of row iteration

	ap_uint<11> temp_corner0 = temp_corners[0];
	ap_uint<11> temp_corner1 = temp_corners[1];
	ap_uint<11> temp_corner2 = temp_corners[2];
	ap_uint<11> temp_corner3 = temp_corners[3];
	ap_uint<11> temp_corner4 = temp_corners[4];
	ap_uint<11> temp_corner5 = temp_corners[5];
	ap_uint<11> temp_corner6 = temp_corners[6];
	ap_uint<11> temp_corner7 = temp_corners[7];
	
	prevCorner[0] = temp_corner0;
	prevCorner[1] = (temp_corner0 > 0) ? ((unsigned int)temp_corner1) : 0;
	prevCorner[2] = (temp_corner0 > 0) ? ((unsigned int)temp_corner2) : 0;
	prevCorner[3] = (temp_corner0 > 0) ? ((unsigned int)temp_corner3) : 0;
	prevCorner[4] = (temp_corner0 > 0) ? ((unsigned int)temp_corner4) : 0;
	prevCorner[5] = (temp_corner0 > 0) ? ((unsigned int)temp_corner5) : 0;
	prevCorner[6] = (temp_corner0 > 0) ? ((unsigned int)temp_corner6) : 0;
	prevCorner[7] = (temp_corner0 > 0) ? ((unsigned int)temp_corner7) : 0;
	// frame_corners[0 -> 7] = assign calculated corners
	
	// bubble sort - naive
	unsigned int corner_id;
	unsigned int temp_num;
	unsigned int num_length = CORNER_HISTORY_FRAME_NUMBER;

	// iterate for each 8 corners - UNROLL the loop because it can happen in parallel
	for ( corner_id = 0; corner_id < CORNER_ELEMENTS; corner_id++) {
#pragma AP UNROLL
#pragma AP PIPELINE II=1
		sorted_corners[*corner_frame_counter][corner_id] = prevCorner[corner_id];

		// after copying data, we can sort it using sorted_corners history
		for (i = 0; i <= num_length; i++) {
#pragma AP PIPELINE II = 1
			for (j = 1; j < num_length; j++ ) {
#pragma AP PIPELINE II = 1
				// swap the value if current is less than previous
				if ( sorted_corners[j - 1][corner_id] > sorted_corners[j][corner_id] ) {
					temp_num = sorted_corners[j][corner_id];
					sorted_corners[j][corner_id] = sorted_corners[j - 1][corner_id];
					sorted_corners[ j - 1 ][corner_id] = temp_num;
				}
			}
		}
	}

	*corner_frame_counter++;
	if (*corner_frame_counter >= CORNER_HISTORY_FRAME_NUMBER )
		*corner_frame_counter = 0;
	else if (*corner_frame_counter == 5)
	  *corner_frame_counter = 6;

	frame_corners[0] = sorted_corners[5][0]; //  A(X) = A[0]	
	frame_corners[1] = sorted_corners[5][1]; //  A(y) = A[1]	
	frame_corners[2] = sorted_corners[5][2]; //  C(X) = C[0]
	frame_corners[3] = sorted_corners[5][3]; //  C(Y) = C[1]	
	frame_corners[4] = sorted_corners[5][4]; //  B(X) = B[0]	
	frame_corners[5] = sorted_corners[5][5]; //  B(Y) = B[1]	
	frame_corners[6] = sorted_corners[5][6]; //  D(X) = D[0]	
	frame_corners[7] = sorted_corners[5][7]; //  D(Y) = D[1]
		
}
