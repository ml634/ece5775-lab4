#ifndef MANR_H
#define MANR_H
#ifdef __cplusplus
extern "C" {
#endif


#pragma APF data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned short  yc_data_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)] );

//void manr ( char nr_strength, unsigned short *yc_in, unsigned short *yc_in_prev, unsigned short *yc_out); 

//void sobel_filter ( unsigned short *yc_in, unsigned short *yc_out); 

void median_filter ( unsigned short *yc_in, unsigned short *median_out );

void median_filter_time (unsigned short *median_time_in, unsigned short * median_time_out );

#pragma APF data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void corner_detect(unsigned short median_out[NUMROWS*NUMCOLS/(SCALE_DOWN_FACTOR*SCALE_DOWN_FACTOR)], unsigned int rgb_out[NUMROWS*NUMPADCOLS], unsigned int frame_corners[CORNER_ELEMENTS]);

//#pragma APF data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
//void ycbcr2rgb_pad(unsigned short corner_data_out[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS]);


#ifdef __cplusplus
};
#endif
#endif
