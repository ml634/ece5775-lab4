/*
 * convert ycbcr to rgb for logicvc input (ff_b_g_r) and pad each line to 2048 ints
 */

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"
#include "ap_video.h"

//Main function for ycbcr2rgb with padding to 2048 pixel line
void ycbcr2rgb_pad(ap_uint<8> yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS], unsigned int com_temp_in[6],  unsigned int corners_temp_in[16], unsigned int frame_com_out[6], unsigned int frame_corners_out[16])
//void ycbcr2rgb_pad(ap_uint<8> yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS])
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
      ap_uint<8>  input_data;
      unsigned short tmp_uv;
      
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
  
  //FINDME: no overlay bc of synthesis error
  signed int temp_x, temp_y;


  /*// FINDME: hardcode green center of mass
  frame_com[4] = 1800;
  frame_com[5] = 500;*/
  
  // Draw COMs in 31*31 (bigger) cyan squares
  for (i = 0; i < 5; i = i + 2){
    if ((com_temp_in[i] > 0) && (com_temp_in[i+1] > 0)){
      for (j = -6; j < 7; j++){
        temp_x = com_temp_in[i] + j;
        if (temp_x >= 0){
          for (k = -6; k < 7; k++){
            #pragma AP PIPELINE II = 1
            temp_y = com_temp_in[i+1] + k;
            if (temp_y >= 0) rgb_out[temp_y * NUMPADCOLS + temp_x] = 0x00FFFF;
          }
        }
      }
    }
  }
  
  // Draw corners in 15*15 (smaller) yellow squares
  for (i = 0; i < 15; i = i + 2){
    if ((corners_temp_in[i] > 0) && (corners_temp_in[i+1] > 0)){
      for (j = -6; j < 7; j++){
        temp_x = corners_temp_in[i] + j;
        if (temp_x >= 0){
          for (k = -6; k < 7; k++){
            #pragma AP PIPELINE II = 1
            temp_y = corners_temp_in[i+1] + k;
            if (temp_y >= 0) rgb_out[temp_y * NUMPADCOLS + temp_x] = 0xFFFF00;
          }
        }
      }
    }
  } 
  
  for (i = 0; i < 6; i++){
    frame_com_out[i] = com_temp_in[i];
  }
  
  for (i = 0; i < 16; i++){
    frame_corners_out[i] = corners_temp_in[i];
  }
  
}

