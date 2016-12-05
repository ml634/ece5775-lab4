/*
 * convert ycbcr to rgb for logicvc input (ff_b_g_r) and pad each line to 2048 ints
 */

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

//Main function for ycbcr2rgb with padding to 2048 pixel line
void ycbcr2rgb_pad(unsigned short yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS], unsigned int frame_com[6], unsigned int frame_corners[16])
{
  int row;
  int col;
  int i, j, k;
  //#pragma AP DATAFLOW
  for(row = 0; row < NUMROWS; row++){
    for(col = 0; col < NUMCOLS; col++){
#pragma AP PIPELINE II = 1
      
      // Temp values used to reduce number of memory reads
      unsigned char uv = 0;
      unsigned char y;
      unsigned int pixval;
      short c, d=0, e=0, r, g, b;
      unsigned short input_data;
      unsigned short tmp_uv;
      
      input_data = yc_in[row*NUMCOLS+col];

	    if (input_data == 80) {

			    pixval = 0x00ff0000;
		    }

	    else if ( input_data == 240) { //segmented as green

			    pixval = 0x0000ff00;
		    }

	    else if ( input_data == 160 ) { //segmented as blue

			    pixval = 0x000000ff;
		    }

	    else {
			    pixval = 0x00000000;

	    }
	    
/*
      y = input_data >> 8 ;
      tmp_uv = input_data  & 0x00ff;
      uv = (unsigned char ) tmp_uv;
      
      // Output image offset from input to account for line buffer
      c = ((input_data >> 8) & 0x00ff) - 16 ;
      if (col %2) {
        e = (input_data & 0x00ff) - 128;
      }
      else {
        d = (input_data & 0x00ff) - 128;
      }
      r = (298*c +409*e+128) >> 8;
      g = (298*c -100*d -208*e) >> 8;
      b = (298*c +516*d+128) >> 8;
      r = (r >255) ? 255 : ((r < 0) ? 0 :r);
      g = (g >255) ? 255 : ((g < 0) ? 0 :g);
      b = (b >255) ? 255 : ((b < 0) ? 0 :b);
      pixval = 0xff;
      pixval = (pixval << 8) | r;
      pixval = (pixval << 8) | g;
      pixval = (pixval << 8) | b;
*/

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
    for (j = -15; j < 16; j++){
      temp_x = frame_com[i] + j;
      if (temp_x >= 0){
        for (k = -15; k < 16; k++){
          temp_y = frame_com[i+1] + k;
          if (temp_y >= 0) rgb_out[temp_y * NUMPADCOLS + temp_x] = 0x00FFFF;
        }
      }
    }
  }
  
  // Draw corners in 15*15 (smaller) yellow squares
  for (i = 0; i < 15; i = i + 2){
    for (j = -6; j < 7; j++){
      temp_x = frame_corners[i] + j;
      if (temp_x >= 0){
        for (k = -6; k < 7; k++){
          temp_y = frame_corners[i+1] + k;
          if (temp_y >= 0) rgb_out[temp_y * NUMPADCOLS + temp_x] = 0xFFFF00;
        }
      }
    }
  }
}

