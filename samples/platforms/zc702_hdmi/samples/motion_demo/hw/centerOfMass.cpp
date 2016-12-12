/************************************************************************************
 * Application: Calculate center of mass points (xBar, yBar) for intput, binary image
 * Author: Andrew Palmer (ajp294)
 * Date: 22 November 2016
 ************************************************************************************/


#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

#define COM_COUNT 8
void centerOfMass(unsigned char yc_data_in[NUMROWS*NUMCOLS], unsigned char yc_data_out_com[NUMROWS*NUMCOLS])
{

int row;
int col;

	for(row = 0; row < NUMROWS; row++){
    	for(col = 0; col < NUMCOLS; col++){
#pragma AP PIPELINE II = 1

			yc_data_out_com[row*NUMCOLS+col] = yc_data_in[row*NUMCOLS+col];
	}
  		
 }


}
