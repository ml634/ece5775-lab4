/*
 * Example using HLS aximm master ports to move data between memory and the
 * hardware function, and HLS axilite for control.
 * 
 * In SDSoC, every HLS function containing an argument that maps to an
 * aximm master requires a return value or other output scalar
 * 
 */
#include <string.h>
#include "mmult.h"

void mmult_kernel(float A[A_NROWS][A_NCOLS],
                  float B[A_NCOLS][B_NCOLS],
                  float C[A_NROWS][B_NCOLS])
{
#ifdef __SDSVHLS__
#pragma HLS INLINE self
#pragma HLS array_partition variable=A block factor=8 dim=2
#pragma HLS array_partition variable=B block factor=8 dim=1
#endif
     
     int i, j, k;
     float prod, sum;
     
     for (i = 0; i < A_NROWS; i++) {
          for (j = 0; j < B_NCOLS; j++) {
#ifdef __SDSVHLS__
#pragma HLS PIPELINE II=1
#endif
               sum = 0;
               for (k = 0; k < A_NCOLS; k++) {
                    // two operators to infer two FP operators
                    prod = A[i][k] * B[k][j];
                    sum += prod;
               }
               C[i][j] = sum;
          }
     }
}

int mmult(float A[A_NROWS*A_NCOLS], float B[B_NROWS*B_NCOLS], float C[A_NROWS*B_NCOLS])
{
#pragma HLS INTERFACE m_axi port=A depth=1024 offset=slave
#pragma HLS INTERFACE m_axi port=B depth=1024 offset=slave
#pragma HLS INTERFACE m_axi port=C depth=1024 offset=slave
#pragma HLS INTERFACE s_axilite port=return 

// For pipelined control, replace the above with the following pragmas.  
// SDSoC automatically inserts the axis_accelerator_adapter
// for axilite control
//#pragma HLS INTERFACE m_axi port=A depth=1024 offset=direct
//#pragma HLS INTERFACE m_axi port=B depth=1024 offset=direct
//#pragma HLS INTERFACE m_axi port=C depth=1024 offset=direct
//#pragma HLS INTERFACE ap_ctrl_hs port=return 
     
     float a_buf[A_NROWS][A_NCOLS];
     float b_buf[A_NCOLS][B_NCOLS];
     float c_buf[A_NCOLS][B_NCOLS];
     
     memcpy(a_buf, A, A_NROWS*A_NCOLS*sizeof(float));
     memcpy(b_buf, B, A_NROWS*A_NCOLS*sizeof(float));

     mmult_kernel(a_buf, b_buf, c_buf);

     memcpy(C, c_buf, A_NROWS*A_NCOLS*sizeof(float));
     return 0;
}

int mmult_sw(float A[A_NROWS*A_NCOLS], float B[B_NROWS*B_NCOLS], float C[A_NROWS*B_NCOLS])
{
     for (int r = 0; r < A_NROWS; r++) {
          for (int c = 0; c < B_NCOLS; c++) {
               float accum = 0;
               for (int k = 0; k < A_NCOLS; k++) {
                    accum += A[r*A_NCOLS+k] * B[k*B_NCOLS+ c];
               }
               C[r*B_NCOLS+c] = accum;
          }
     }
     return 0;
}

