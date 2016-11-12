#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "mmult_accel.h"

#define NUM_TESTS 1024

#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP_SW  { clock_end = sds_clock_counter(); std::cout << "Average number of processor cycles for golden version: " << (clock_end-clock_start)/NUM_TESTS << std::endl; clock_start = sds_clock_counter();  }
#define TIME_STAMP_ACCEL  { clock_end = sds_clock_counter(); std::cout << "Average number of processor cycles for hardware version: " << (clock_end-clock_start)/NUM_TESTS << std::endl; }

static void mmult_init(int dim1, data_t *tin1Buf,  data_t *tin2Buf, data_t *toutBufSw, data_t *toutBufHw)
{
     int i, j;
     
     for (i = 0; i < dim1; i++) {
          for (j = 0; j < dim1; j++) {
               tin1Buf[i * dim1 + j] = 1+i*dim1+j;
          }
     }
     for (i = 0; i < dim1; i++) {  
          for (j = 0; j < dim1; j++) {
               tin2Buf[i * dim1 + j] = rand() % (dim1 * dim1);
          }
     }
     for (i = 0; i < dim1; i++) {
          for (j = 0; j < dim1; j++) {
               toutBufSw[i * dim1 + j] = 0.0;
               toutBufHw[i * dim1 + j] = 0.0;
          }
     }
}

void mmult_golden(data_t *in_arr,  data_t *in_arr2, data_t *out_arr, int dim1)
{
     for (int row = 0; row < dim1; row++) {
          for (int col = 0; col < dim1; col++) {
               data_t result = 0.0;
               for (int k = 0; k < dim1; k++) {
                    result += in_arr[row*dim1+k] * in_arr2[k*dim1+col];
               }
               out_arr[row*dim1+col] = result;
          }
     }
}

static int mmult_result_check(int dim1, data_t *toutBufSw, data_t *toutBufHw)
{
     int i;
     
     for (i = 0; i < dim1 * dim1; i++) {
          if (toutBufSw[i] != toutBufHw[i]) {
               std::cout << "Mismatch: index=" << i
                         << " d=" << toutBufSw[i] 
                         << ", dout=" << toutBufHw[i] << std::endl;
               return 0;
          }
     }
     return 1;
}

int mmult_test(int dim1, data_t *tin1Buf,  data_t *tin2Buf, data_t *toutBufSw, data_t *toutBufHw)
{
     int i;
     
     std::cout << "Testing mmult ..." << std::endl;
     
     mmult_init(dim1, tin1Buf, tin2Buf, toutBufSw, toutBufHw);
     
     TIME_STAMP_INIT
          
          for (i = 0; i < NUM_TESTS; i++) {
               mmult_golden(tin1Buf, tin2Buf, toutBufSw, dim1);
          }
     
     TIME_STAMP_SW
          
          for (i = 0; i < NUM_TESTS; i++)
               mmult_accel(tin1Buf, tin2Buf, toutBufHw, dim1);
     
     TIME_STAMP_ACCEL
          
          return mmult_result_check(dim1, toutBufSw, toutBufHw);
}


int main(int argc, char* argv[]){
     int test_passed = 0;
     data_t *tin1Buf, *tin2Buf, *toutBufSw, *toutBufHw;
     
     tin1Buf = (data_t *)sds_alloc(A_NROWS * A_NCOLS * sizeof(data_t));
     tin2Buf = (data_t *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(data_t));
     toutBufHw = (data_t *)sds_alloc(A_NROWS * B_NCOLS * sizeof(data_t));
     toutBufSw = (data_t *)sds_alloc(A_NROWS * B_NCOLS * sizeof(data_t));
     
     if (!tin1Buf || !tin2Buf || !toutBufHw || !toutBufSw) {
          if (tin1Buf) sds_free(tin1Buf);
          if (tin2Buf) sds_free(tin2Buf);
          if (toutBufHw) sds_free(toutBufHw);
          if (toutBufSw) sds_free(toutBufSw);
          return 2;
     }
     
     std::cout << "Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = " << 32 << std::endl;
     test_passed = mmult_test(32, tin1Buf, tin2Buf, toutBufSw, toutBufHw);
     std::cout << "TEST " << (test_passed ? "PASSED" : "FAILED") << std::endl;
     
     test_passed = 0;
     
     std::cout << "Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = " << 16 << std::endl;
     test_passed = mmult_test(16, tin1Buf, tin2Buf, toutBufSw, toutBufHw);
     std::cout << "TEST " << (test_passed ? "PASSED" : "FAILED") << std::endl;
     
     sds_free(tin1Buf);
     sds_free(tin2Buf);
     sds_free(toutBufHw);
     sds_free(toutBufSw);
     
     return 0;
}
