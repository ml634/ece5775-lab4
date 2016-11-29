/************************************************************************************
 * Application: Calculate center of mass points (xBar, yBar) for intput, binary image
 * Author: Andrew Palmer (ajp294)
 * Date: 22 November 2016
 ************************************************************************************/


#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

void centerOfMass(unsigned short yc_data_in[NUMROWS*NUMCOLS], unsigned short yc_data_out[NUMROWS*NUMCOLS], unsigned int comX, unsigned int comY)
{

   // Do i need these? not using a FIFO from the HW?
   // it is "other operation" class that isn't in image processing pipeline
   #pragma AP INTERFACE ap_fifo port= rgb_data_in
   #pragma AP INTERFACE ap_fifo port= yc_data_out

   unsigned short pixel;
   
   int row;
   int col;
   
   unsigned int m00, m01, m10; // moment variables
   unsigned int xBar, yBar; // center of mass coords

   // initialize moment values
   m00 = 0;
   m01 = 0;
   m10 = 0;
   
   for(row = 0; row < NUMROWS; row++){
      for(col = 0; col < NUMCOLS; col++){
         #pragma AP PIPELINE II = 1
         pixel = yc_data_in[row*NUMCOLS + col] / 255;
         m00 += pixel;
         m10 += pixel * col;
         m01 += pixel * row;

         // output pixel
         yc_data_out[row*NUMCOLS +col] = pixel;
      }
   }

   xBar = m10 / m00;
   yBar = m01 / m00;

   // assign center of mass coords to output 
   comX = xBar;
   comY = yBar;

   printf("Coord : %d, %d\n", comX, comY);
   printf("moment values: %d, %d, %d\n",  m00, m10, m01);
}
