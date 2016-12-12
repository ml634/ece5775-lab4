#ifndef _IMAGE_CORES_H_
#define _IMAGE_CORES_H_
#ifdef __cplusplus
extern "C" {
#endif

#define COM_COUNT 8

#pragma SDS data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(rgb_data_in:SEQUENTIAL, yc_data_out:SEQUENTIAL)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned char  yc_data_out[NUMROWS*NUMCOLS]);


#pragma SDS data access_pattern(yc_data_in:SEQUENTIAL, yc_data_out_com:SEQUENTIAL)
#pragma SDS data access_pattern(local_com_out:SEQUENTIAL)
void centerOfMass(unsigned char yc_data_in[NUMROWS*NUMCOLS], unsigned char yc_data_out_com[NUMROWS*NUMCOLS], unsigned int local_com_out[COM_COUNT] );

#pragma SDS data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(yc_in:SEQUENTIAL, rgb_out:SEQUENTIAL)
#pragma SDS data access_pattern(local_com_in:SEQUENTIAL)
void ycbcr2rgb_pad(unsigned char yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS],unsigned int local_com_in[COM_COUNT] );

#ifdef __cplusplus
};
#endif
#endif
