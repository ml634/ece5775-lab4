#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>

#include "mmult_accel.h"

#define NUM_VECTORS 4
#define NUM_TESTS 256

#define PIPELINE_DEPTH_MIN	1
#define PIPELINE_DEPTH_MAX	3
#define PIPELINE_DEPTH_DEFAULT	2


#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP_SW  { clock_end = sds_clock_counter(); std::cout << "Average number of processor cycles for golden version: " << (clock_end-clock_start)/(NUM_VECTORS*NUM_TESTS) << std::endl; clock_start = sds_clock_counter();  }
#define TIME_STAMP_ACCEL  { clock_end = sds_clock_counter(); std::cout << "Average number of processor cycles for hardware version: " << (clock_end-clock_start)/(NUM_VECTORS*NUM_TESTS) << std::endl; }

static void mmult_init(data_t *tin1Buf[NUM_VECTORS],
                       data_t *tin2Buf[NUM_VECTORS],
                       data_t *toutBufSw[NUM_VECTORS],
                       data_t *toutBufHw[NUM_VECTORS])
{
     int i, j, vec;
     for(vec = 0; vec < NUM_VECTORS; vec++) {
          for (i = 0; i < A_NROWS; i++) {
               for (j = 0; j < A_NCOLS; j++) {
                    tin1Buf[vec][i * A_NCOLS + j] = 1+i*A_NCOLS+j;
               }
          }
          for (i = 0; i < B_NROWS; i++) {  
               for (j = 0; j < B_NCOLS; j++) {
                    tin2Buf[vec][i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
               }
          }
          for (i = 0; i < A_NROWS; i++) {
               for (j = 0; j < B_NCOLS; j++) {
                    toutBufSw[vec][i * B_NCOLS + j] = 0.0;
                    toutBufHw[vec][i * B_NCOLS + j] = 0.0;
               }
          }
     }
}

void mmult_golden(data_t *in_arr,  data_t *in_arr2, data_t *out_arr)
{
     for (int row = 0; row < A_NROWS; row++) {
          for (int col = 0; col < B_NCOLS; col++) {
               data_t result = 0.0;
               for (int k = 0; k < A_NCOLS; k++) {
                    result += in_arr[row*A_NCOLS+k] * in_arr2[k*B_NCOLS+col];
               }
               out_arr[row*A_NCOLS+col] = result;
          }
     }
}

static int mmult_result_check(data_t *toutBufSw[NUM_VECTORS], 
                              data_t *toutBufHw[NUM_VECTORS])
{
     int i, vec;
     for(vec = 0; vec < NUM_VECTORS; vec++) {  
          for (i = 0; i < A_NROWS * B_NCOLS; i++) {
               if (toutBufSw[vec][i] != toutBufHw[vec][i]) {
                    std::cout << "Mismatch: data vector=" << vec 
                              << " index=" << i 
                              << " d=" << toutBufSw[vec][i] 
                              << ", dout=" << toutBufHw[vec][i] << std::endl;
        return 0;
      }
    }
  }
  return 1;
}

int mmult_test(data_t *tin1Buf[NUM_VECTORS], 
               data_t *tin2Buf[NUM_VECTORS], 
               data_t *toutBufSw[NUM_VECTORS],
               data_t *toutBufHw[NUM_VECTORS],
               int pipeline_depth)
{
     int i, vec;
     
     std::cout << "Testing mmult ..." << std::endl;
     
     mmult_init(tin1Buf, tin2Buf, toutBufSw, toutBufHw);
     
     TIME_STAMP_INIT
          
     for (i = 0; i < NUM_TESTS; i++) {
          for (vec = 0; vec < NUM_VECTORS; vec++) {
               mmult_golden(tin1Buf[vec], tin2Buf[vec], toutBufSw[vec]);
          }
     }
     
     TIME_STAMP_SW
          
     for (i = 0; i < NUM_TESTS; i++) {
          for (vec = 0; vec < pipeline_depth; vec++) {
#pragma SDS async(1)
               mmult_accel(tin1Buf[vec], tin2Buf[vec], toutBufHw[vec]);
          }
          for (vec = pipeline_depth; vec < NUM_VECTORS; vec++) {
#pragma SDS wait(1)
#pragma SDS async(1)
               mmult_accel(tin1Buf[vec], tin2Buf[vec], toutBufHw[vec]);
          }
               
          for (vec = 0; vec < pipeline_depth; vec++) {
#pragma SDS wait(1)
          }
     }
     
     TIME_STAMP_ACCEL
          
     return mmult_result_check(toutBufSw, toutBufHw);
}


int main(int argc, char* argv[]){
     
     int pipeline_depth = PIPELINE_DEPTH_DEFAULT;
     int test_passed = 0;
     data_t *tin1Buf[NUM_VECTORS];
     data_t *tin2Buf[NUM_VECTORS];
     data_t *toutBufSw[NUM_VECTORS];
     data_t *toutBufHw[NUM_VECTORS];
     
     // use pipeline depth from command argument, if passed in
     if (argc == 2) {
          pipeline_depth = atoi(argv[1]);
          if (pipeline_depth > PIPELINE_DEPTH_MAX || pipeline_depth < PIPELINE_DEPTH_MIN) {
               std::cout << "Please use pipeline depth from " << PIPELINE_DEPTH_MIN 
                         << " to " << PIPELINE_DEPTH_MAX << std::endl;
               return 1;
          }
     } 
     
     std::cout << "Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = " << A_NROWS << std::endl;
     std::cout << "Pipeline depth = " << pipeline_depth << std::endl;
     int vec;
     for(vec = 0; vec < NUM_VECTORS; vec++) {
          tin1Buf[vec] = (data_t *)sds_alloc(A_NROWS * A_NCOLS * sizeof(data_t));
          tin2Buf[vec] = (data_t *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(data_t));
          toutBufHw[vec] = (data_t *)sds_alloc(A_NROWS * B_NCOLS * sizeof(data_t));
          toutBufSw[vec] = (data_t *)sds_alloc(A_NROWS * B_NCOLS * sizeof(data_t));
          if (!tin1Buf[vec] || !tin2Buf[vec] || !toutBufHw[vec] || !toutBufSw[vec]) {
               if (tin1Buf[vec]) sds_free(tin1Buf[vec]);
               if (tin2Buf[vec]) sds_free(tin2Buf[vec]);
               if (toutBufHw[vec]) sds_free(toutBufHw[vec]);
               if (toutBufSw[vec]) sds_free(toutBufSw[vec]);
               return 2;
          }
     }
     
     test_passed = mmult_test(tin1Buf, tin2Buf, toutBufSw, toutBufHw, pipeline_depth);
     
     for(vec = 0; vec < NUM_VECTORS; vec++) {
          sds_free(tin1Buf[vec]);
          sds_free(tin2Buf[vec]);
          sds_free(toutBufHw[vec]);
          sds_free(toutBufSw[vec]);
     }
     
     std::cout << "TEST " << (test_passed ? "PASSED" : "FAILED") << std::endl;
  
  return 0;
}
