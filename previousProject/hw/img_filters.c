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
 *     (c) Copyright 2013 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/


/*****************************************************************************
 *
 * @file img_filters.h
 *
 * Implementation of software Sobel filter.
 *
 ******************************************************************************/

#include <stdio.h>
#include "frame_size.h"
#include "img_cores.h"

//unsigned short yc_data_prev[NUMROWS*NUMCOLS], yc_data_in[NUMROWS*NUMCOLS], yc_manr_out[NUMROWS*NUMCOLS], yc_sobel_out[NUMROWS*NUMCOLS];
unsigned short yc_data_in[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)], median_space_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)], median_time_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)], corner_data_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)]; // yc_sobel_out[NUMROWS*NUMCOLS];

//unsigned int rgb_data_in1[NUMROWS*NUMPADCOLS], rgb_data_in2[NUMROWS*NUMPADCOLS];
//void img_process(unsigned int *rgb_data_prev, unsigned int *rgb_data_in, unsigned int *rgb_data_out, int param0, int param1, int param2)
void img_process(unsigned int *rgb_data_in, unsigned int *rgb_data_out, unsigned int* frame_corners, int param0, int param1, int param2)
{
/*
    rgb_pad2ycbcr(rgb_data_prev, yc_data_prev);
    rgb_pad2ycbcr(rgb_data_in, yc_data_in);
    manr((char)param1, yc_data_prev, yc_data_in, yc_manr_out);
    sobel_filter(yc_manr_out, yc_sobel_out);
    ycbcr2rgb_pad(yc_sobel_out, rgb_data_out);
*/

    // duplicate the input stream
//    duplicate(rgb_data_in, rgb_data_in1, rgb_data_

    // Convert RGB to YCbCr and Threshold the image
    // to contain only Red color component, make everything else black background
    // and red as white foreground
    rgb_pad2ycbcr(rgb_data_in, yc_data_in);
    
    // Do the median 5x5 filter over space
    median_filter(yc_data_in, median_space_out );

    // median filter over time. Considering it over 4 frames
    median_filter_time(median_space_out, median_time_out );
    
    // detects the corners and writes it into the corners block
    // corner_data_out then will be passed to display_corner block
    corner_detect(median_time_out, rgb_data_out, frame_corners);
    
    // display_corner(corner_data_out, );
    // Convert back thresholded into RGB format. 
//    ycbcr2rgb_pad(corner_data_out, rgb_data_out);
}
