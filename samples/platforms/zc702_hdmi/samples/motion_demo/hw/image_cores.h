#ifndef _IMAGE_CORES_H_
#define _IMAGE_CORES_H_
#ifdef __cplusplus
extern "C" {
#endif

#pragma SDS data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(rgb_data_in:SEQUENTIAL, yc_data_out:SEQUENTIAL)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned char  yc_data_out[NUMROWS*NUMCOLS]);


#pragma SDS data access_pattern(input_edge:SEQUENTIAL)
#pragma SDS data access_pattern(input_pix:SEQUENTIAL)
#pragma SDS data access_pattern(median_pix:SEQUENTIAL)
#pragma SDS data access_pattern(original_pix:SEQUENTIAL)
void median_char_filter_pass(char threshold, unsigned char input_edge[NUMROWS*NUMCOLS], unsigned short input_pix[NUMROWS*NUMCOLS],unsigned char median_pix[NUMROWS*NUMCOLS], unsigned short original_pix[NUMROWS*NUMCOLS]);

#pragma SDS data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(yc_in:SEQUENTIAL)
#pragma SDS data access_pattern(rgb_out:SEQUENTIAL)
void ycbcr2rgb_pad(unsigned char yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS]);

#ifdef __cplusplus
};
#endif
#endif
