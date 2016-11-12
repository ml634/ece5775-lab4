/*
 * SDSoC will automatically transfer up to sixteen array arguments (eight
 * input, eight output) that map to HLS ap_fifo and bram interfaces using
 * axi-streams.  If the number of input or output array arguments excceds eight,
 * you must either use aximm transport or explicitly code axis interfaces in
 * your HLS code.  The advantage of axi-streams are the efficient DMA
 * datamovers; the disadvantage of using HLS axis interfaces is that your C code
 * must include explicit axis transport to insert axis TLAST and TKEEP signals
 * required by the DMA datamover.
 *
 * This example demonstrates how to use compiler preprocessor directives (#if)
 * to hide all axis transport from any calling code, but still have sdi
 * pass the explicit axis transport code to HLS where it will be synthesized
 * into the hardware interface.
 *
 * Note also the use of a union to transter floating point data over
 * uninterpreted bytes within the axis TDATA field so that calling code does not
 * have to perform conversion for data transfer.
 *
 * By using this mechanism, sdi will automatically generate the correct stub
 * functions using cf_send/cf_recv APIs to communicate with the HLS function.
 * From a sofware perspective, any caller will pass arrays of the scalar type,
 * which will be packed into axis TDATA portion of the interface
 * 
 * All explicit axis code is guarded by "#ifdef __SDSVHLS__ ... #endif", so that
 * this function can also be compiled for ARM or x86 CPUs.
 */
#include <stdio.h>
#include <stdlib.h>
#include "mmult.h"

#ifdef __SDSVHLS__
#include "ap_axi_sdata.h"
#endif
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

#ifdef __SDSVHLS__

void mmult(ap_axiu<32,1,1,1> A[A_NROWS*A_NCOLS],
           ap_axiu<32,1,1,1> B[A_NCOLS*B_NCOLS], 
           ap_axiu<32,1,1,1> C[A_NROWS*B_NCOLS]) 
#else
void mmult(float A[A_NROWS*A_NCOLS], 
           float B[A_NCOLS*B_NCOLS], 
           float C[A_NROWS*B_NCOLS]) 
#endif
{
#ifdef __SDSVHLS__
#pragma HLS interface axis port=A
#pragma HLS interface axis  port=B
#pragma HLS interface axis port=C
#pragma HLS interface ap_ctrl_none port=return
     
     volatile ap_axiu<32,1,1,1> tmp1, tmp2;
     union {
          int ival;
          float floatval;
     } conv1, conv2;
#endif
     float A_buf[A_NROWS][A_NCOLS];
     float B_buf[A_NCOLS][B_NCOLS];
     float C_buf[A_NROWS][B_NCOLS];
     
     // read matrix A
     for(int i = 0, k = 0; i < A_NROWS; i++) {
          for(int j = 0; j < A_NCOLS; j++, k++) {
#ifdef __SDSVHLS__
#pragma HLS PIPELINE II=1
               conv1.ival  = A[k].data;
               A_buf[i][j] = conv1.floatval;
               tmp1.keep  = A[k].keep;
               tmp1.strb  = A[k].strb;
               tmp1.user  = A[k].user;
               tmp1.last  = A[k].last;
               tmp1.id    = A[k].id;
               tmp1.dest  = A[k].dest;
#else
               A_buf[i][j] = A[k];
#endif
          }
     }
     
     // read matrix B
     for(int l = 0, n = 0; l < A_NCOLS; l++) {
          for(int m = 0; m < B_NCOLS; m++, n++) {
#ifdef __SDSVHLS__
#pragma HLS PIPELINE II=1
               conv2.ival  = B[n].data;
               B_buf[l][m] = conv2.floatval;
               tmp2.keep   = B[n].keep;
               tmp2.strb   = B[n].strb;
               tmp2.user   = B[n].user;
               tmp2.last   = B[n].last;
               tmp2.id     = B[n].id;
               tmp2.dest   = B[n].dest;
#else
               B_buf[l][m] = B[n];
#endif
          }
     }
     // compute the matrix product
     mmult_kernel(A_buf, B_buf, C_buf);
     
     // write matrix C, convert from float to ap_axiu
     for(int i = 0, k = 0; i < A_NROWS; i++) {
          for(int j = 0; j < B_NCOLS; j++, k++) {
#ifdef __SDSVHLS__
#pragma HLS PIPELINE II=1
               conv1.floatval = C_buf[i][j];
               C[k].data  = conv1.ival;
               C[k].keep  = 15;
               C[k].strb  = 1;
               C[k].user  = 0;
               C[k].last  = (k == (A_NROWS*B_NCOLS-1)) ? 1 : 0;
               C[k].id    = 0;
               C[k].dest  = 0;
#else
               C[k] = C_buf[i][j];
#endif
          }
     }
}

void mmult_sw(float *A, float *B, float *C)
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
}
