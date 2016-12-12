/*
 * convert ycbcr to rgb for logicvc input (ff_b_g_r) and pad each line to 2048 ints
 */

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

#define COM_COUNT 8

//Main function for ycbcr2rgb with padding to 2048 pixel line
void ycbcr2rgb_pad(unsigned char yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS], unsigned int local_com_in[COM_COUNT])
{


  int row;
  int col;
  int i, j, k;

  //#pragma AP DATAFLOW
  for(row = 0; row < NUMROWS; row++){
    for(col = 0; col < NUMCOLS; col++){
#pragma AP PIPELINE II = 1
      
		unsigned int pixval;
		unsigned char input_data;
 
		input_data = yc_in[row*NUMCOLS+col];

		
		if (input_data == 1) {

			    pixval = 0x00ff0000;
		    }

	    else if ( input_data == 3) { //segmented as green

			    pixval = 0x0000ff00;
		    }

	    else if ( input_data == 2 ) { //segmented as blue

			    pixval = 0x000000ff;
		    }

	    else {
			    pixval = 0x00000000;

	    }
		
 
      rgb_out[row*NUMPADCOLS+col] = pixval;


    }
    for (col = NUMCOLS; col < NUMPADCOLS; col++) {
#pragma AP PIPELINE II = 1
      rgb_out[row*NUMPADCOLS+col] = 0;
    }
  }

	signed int temp_x, temp_y;

	// Draw COMs in 31*31 (bigger) cyan squares
  for (i = 0; i < 5; i = i + 2){
    if ((local_com_in[i] > 0) && (local_com_in[i+1] > 0)){
      for (j = -6; j < 7; j++){
        temp_x = local_com_in[i] + j;
        if (temp_x >= 0){
          for (k = -6; k < 7; k++){
            #pragma AP PIPELINE II = 1
            temp_y = local_com_in[i+1] + k;
            if (temp_y >= 0) rgb_out[temp_y * NUMPADCOLS + temp_x] = 0x00FFFF;
          }
        }
      }
    }
  } 

}

