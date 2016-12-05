/************************************************************************************
 * Application: Calculate center of mass points (xBar, yBar) for intput, binary image
 * Author: Andrew Palmer (ajp294)
 * Date: 22 November 2016
 ************************************************************************************/


#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

#define COM_COUNT 6

void centerOfMass(unsigned short yc_data_in[NUMROWS*NUMCOLS], unsigned short yc_data_out[NUMROWS*NUMCOLS], unsigned int frame_com[COM_COUNT], unsigned char color)
{

   // Do i need these? not using a FIFO from the HW?
   #pragma AP INTERFACE ap_fifo port= yc_data_in
   #pragma AP INTERFACE ap_fifo port= yc_data_out

   unsigned short pixel;
   
   int row;
   int col;
   
   unsigned int red_m00, red_m01, red_m10; // moment variables for red
   unsigned int blue_m00, blue_m01, blue_m10; // moment variables for blue
   unsigned int green_m00, green_m01, green_m10; // moment variables for green

   unsigned int red_xBar, red_yBar; // center of mass coords for red
   unsigned int blue_xBar, blue_yBar; // center of mass coords for blue
   unsigned int green_xBar, green_yBar; // center of mass coords for green

   // initialize moment values m00 != 0 to prevent floating pt error
   red_m00 = 1;
   red_m01 = 0;
   red_m10 = 0;
   
   blue_m00 = 1;
   blue_m01 = 0;
   blue_m10 = 0;

   green_m00 = 1;
   green_m01 = 0;
   green_m10 = 0;

   for(row = 0; row < NUMROWS; row++){
      for(col = 0; col < NUMCOLS; col++){
         #pragma AP PIPELINE II = 1
         pixel = yc_data_in[row*NUMCOLS + col]; // / 255;

         if (pixel == 80) {
            // red: need to normalize pixel values for moment calculation
            red_m00 += pixel / 80;
            red_m10 += (pixel / 80) * col;
            red_m01 += (pixel / 80) * row;
         }
         else if (pixel == 160) {
            // blue: Normalize by 160
            blue_m00 += pixel / 160;
            blue_m10 += (pixel / 160) * col;
            blue_m01 += (pixel / 160) * row;
         }
         else if (pixel == 240) {
            // green: normalize by 240
            green_m00 += pixel / 240;
            green_m10 += (pixel / 240) * col;
            green_m01 += (pixel / 240) * row;
         }


         // output pixel
         yc_data_out[row*NUMCOLS +col] = yc_data_in[row*NUMCOLS + col];
      }
   }

   // calculate COM points from each color's moment values
   red_xBar = red_m10 / red_m00;
   red_yBar = red_m01 / red_m00;

   blue_xBar = blue_m10 / blue_m00;
   blue_yBar = blue_m01 / blue_m00;

   green_xBar = green_m10 / green_m00;
   green_yBar = green_m01 / green_m00;

   // assign center of mass coordinates to appropriate position in frame_com
   frame_com[0] = red_xBar;
   frame_com[1] = red_yBar;
   frame_com[2] = blue_xBar;
   frame_com[3] = blue_yBar;
   frame_com[4] = green_xBar;
   frame_com[5] = green_yBar;

   // switch(color) {
   //    case('r'):
   //       frame_com[0] = xBar;
   //       frame_com[1] = yBar;
   //    case('b'):
   //       frame_com[2] = xBar;
   //       frame_com[3] = yBar;
   //    case('g'):
   //       frame_com[4] = xBar;
   //       frame_com[5] = yBar;
   // }

}
