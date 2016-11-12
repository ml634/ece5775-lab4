#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"

void mmult_kernel(data_t in_A[A_NROWS][A_NCOLS],
                  data_t in_B[A_NCOLS][B_NCOLS],
                  data_t out_C[A_NROWS*B_NCOLS])
{
#pragma HLS INLINE self
#pragma HLS array_partition variable=in_A block factor=8 dim=2
#pragma HLS array_partition variable=in_B block factor=8 dim=1

     int index_a, index_b, index_d;
     
     for (index_a = 0; index_a < A_NROWS; index_a++) {
          for (index_b = 0; index_b < B_NCOLS; index_b++) {
#pragma HLS PIPELINE II=1
               data_t result = 0;
               for (index_d = 0; index_d < A_NCOLS; index_d++) {
                    // multiply accumulate broken into individual operators
                    // so that AutoESL can infer two FP operators
                    data_t product_term = in_A[index_a][index_d] * in_B[index_d][index_b];
                    result += product_term;
               }
               out_C[index_a * B_NCOLS + index_b] = result;
          }
     }
}

void mmult_accel (data_t in_A[A_NROWS*A_NCOLS],
                  data_t in_B[A_NCOLS*B_NCOLS],
                  data_t out_C[A_NROWS*B_NCOLS]) 
{
     int i, j;
     data_t a_buf[A_NROWS][A_NCOLS];
     data_t b_buf[A_NCOLS][B_NCOLS];
     
     // Transfer matrix A from multi-buffer into local RAM
     for(i=0; i<A_NROWS; i++) {
          for(j=0; j<A_NCOLS; j++) {
#pragma HLS PIPELINE II=1
               a_buf[i][j] = in_A[i * A_NCOLS + j];
          }
     }
     
     // Transfer matrix B from multi-buffer into local RAM
     for(i=0; i<A_NCOLS; i++) {
          for(j=0; j<B_NCOLS; j++) {
#pragma HLS PIPELINE II=1
               b_buf[i][j] = in_B[i * B_NCOLS + j];
          }
     }
     
     // Matrix multiply call
     mmult_kernel(a_buf, b_buf, out_C);
}
