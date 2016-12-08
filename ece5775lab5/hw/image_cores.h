#ifndef _IMAGE_CORES_H_
#define _IMAGE_CORES_H_
#ifdef __cplusplus
extern "C" {
#endif


#pragma SDS data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(rgb_data_in:SEQUENTIAL, yc_data_out:SEQUENTIAL)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], ap_uint<2> yc_data_out[NUMROWS*NUMCOLS]);

#pragma SDS data access_pattern(yc_data_in:SEQUENTIAL, yc_data_out:SEQUENTIAL)
void centerOfMass(ap_uint<2> yc_data_in[NUMROWS*NUMCOLS], ap_uint<2> yc_data_out[NUMROWS*NUMCOLS], unsigned int frame[COM_COUNT]);

#pragma SDS data access_pattern(median_out:SEQUENTIAL,  corner_data_out:SEQUENTIAL)
void corner_detect(ap_uint<2> median_out[NUMROWS*NUMCOLS], ap_uint<2> corner_data_out[NUMROWS*NUMCOLS], unsigned int frame_corners[CORNER_ELEMENTS]);

// #pragma SDS data access_pattern(inter_pix:SEQUENTIAL, output_edge:SEQUENTIAL)
// void sobel_filter(unsigned short inter_pix[NUMROWS*NUMCOLS],unsigned char output_edge[NUMROWS*NUMCOLS]);

// #pragma SDS data access_pattern(inter_pix:SEQUENTIAL, output_edge:SEQUENTIAL, original_pix:SEQUENTIAL)
// void sobel_filter_pass(unsigned short inter_pix[NUMROWS*NUMCOLS],unsigned char output_edge[NUMROWS*NUMCOLS], unsigned short original_pix[NUMROWS*NUMCOLS]);

// #pragma SDS data access_pattern(motion_image:SEQUENTIAL, original:SEQUENTIAL, output_image:SEQUENTIAL)
// void combo_image(char pass_through_option, unsigned char motion_image[NUMROWS*NUMCOLS],unsigned short original[NUMROWS*NUMCOLS],unsigned short output_image[NUMROWS*NUMCOLS]);

// #pragma SDS data access_pattern(current_pix:SEQUENTIAL)
// #pragma SDS data access_pattern(previous_pix:SEQUENTIAL)
// #pragma SDS data access_pattern(original:SEQUENTIAL)
// #pragma SDS data access_pattern(original_output:SEQUENTIAL)
// #pragma SDS data access_pattern(motion_image:SEQUENTIAL)
// void diff_image(unsigned char current_pix[NUMROWS*NUMCOLS],unsigned char previous_pix[NUMROWS*NUMCOLS], unsigned short original[NUMROWS*NUMCOLS], unsigned short original_output[NUMROWS*NUMCOLS], unsigned char motion_image[NUMROWS*NUMCOLS]);

#pragma SDS data access_pattern(input_pix:SEQUENTIAL)
#pragma SDS data access_pattern(median_pix:SEQUENTIAL)
void median_char_filter_pass(ap_uint<2> input_pix[NUMROWS*NUMCOLS], ap_uint<2> median_pix[NUMROWS*NUMCOLS]);

#pragma SDS data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(yc_in:SEQUENTIAL)
#pragma SDS data access_pattern(rgb_out:SEQUENTIAL)
void ycbcr2rgb_pad(ap_uint<2> yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS], unsigned int frame_com[COM_COUNT], unsigned int frame_corners[CORNER_ELEMENTS]);

#ifdef __cplusplus
};
#endif
#endif
