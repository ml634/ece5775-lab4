/*
 * convert ycbcr to rgb for logicvc input (ff_b_g_r) and pad each line to 2048 ints
 */

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

//Main function for ycbcr2rgb with padding to 2048 pixel line
void ycbcr2rgb_pad(unsigned char yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS])
{
  int row;
  int col;
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
}

