#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>

#include "mmult.h"

#define NUM_TESTS 64

#ifndef __SDSCC__
#define sw_apf_clk_start()
#define sw_apf_clk_stop()
#define sw_avg_cpu_cycles()
#define hw_apf_clk_start()
#define hw_apf_clk_stop()
#define hw_avg_cpu_cycles()
#define sds_alloc(x)malloc(x)
#define sds_free(x)free(x)
#else
#include "sds_lib.h"
unsigned long long sw_counter = 0;
unsigned long long hw_counter = 0;
unsigned long long sw_counter_total = 0;
unsigned long long hw_counter_total = 0;
unsigned int sw_num_calls = 0;
unsigned int hw_num_calls = 0;

#define sw_apf_clk_start()             \
{                                      \
     sw_counter = sds_clock_counter(); \
     sw_num_calls++;                   \
}
#define sw_apf_clk_stop()                           \
{                                                   \
     unsigned long long tmp = sds_clock_counter();  \
     sw_counter_total += ((tmp < sw_counter)        \
                          ? (sw_counter - tmp)      \
                          : (tmp - sw_counter));    \
}
#define sw_avg_cpu_cycles() (sw_counter_total / sw_num_calls)

#define hw_apf_clk_start()             \
{                                      \
     hw_counter = sds_clock_counter(); \
     hw_num_calls++;                   \
}
#define hw_apf_clk_stop()                          \
{                                                  \
     unsigned long long tmp = sds_clock_counter(); \
     hw_counter_total += ((tmp < hw_counter)       \
                          ? (hw_counter - tmp)     \
                          : (tmp - hw_counter));   \
}
#define hw_avg_cpu_cycles() (hw_counter_total / hw_num_calls)
#endif

void print_array(data_t* a, const char* name)
{
     std::cout << "Array " << name << std::endl;
     for (int r = 0; r < A_NROWS; r++)  {
          for (int c = 0; c < B_NCOLS; c++)
               std::cout << std::setw(6) << a[r * B_NCOLS+c];
          std::cout << std::endl;
     }
}

int main(int argc, char *argv[])
{
     std::cout << "Allocating arrays" << std::endl;
     bool success = true;
     data_t *A, *B, *Chw, *Csw;
     A   = (data_t *)sds_alloc(N * sizeof(data_t));
     B   = (data_t *)sds_alloc(N * sizeof(data_t));
     Chw = (data_t *)sds_alloc(N * sizeof(data_t));
     Csw = (data_t *)malloc(N * sizeof(data_t));
     if (A == NULL || B == NULL || Chw == NULL || Csw == NULL) {
          std::cout << "Could not allocate memory - exiting" << std::endl;
     }
     else {
          std::cout << "Test iteration: ";
          for (int j = 0; success && j < NUM_TESTS; j++) {
               std::cout << std::setw(3) << j;
               int size = N;
               for (int i = size-1; i >= 0; i-- ) {
                    A[i] = rand() % 16 ;
                    B[i] = rand() % 16 ;
                    Chw[i] = 0;
                    Csw[i] = 0;
               }
               
               hw_apf_clk_start();
               mmult(A, B, Chw);
               hw_apf_clk_stop();
               
               sw_apf_clk_start();
               mmult_sw(A, B, Csw);
               sw_apf_clk_stop();
               
               for (int i = 0; i < size; i++ ) {
                    if (Chw[i] != Csw[i]) {
                         std::cout << "Iteration " << j << ": valudes differ "
                                   << Chw[i] << " " << Csw[i] << std::endl;
                         success = false;
                         break;
                    }
               }
          }
          std::cout << std::endl;
          if (false && success) {
               std::cout << "Data for final iteration:" << std::endl;
               print_array(A, "A");
               print_array(B, "B");
               print_array(Csw, "sw_C");
               print_array(Chw, "hw_C");
          }
          std::cout << "Ran " << NUM_TESTS << " iterations" << std::endl;
#ifdef __SDSCC__
          std::cout << "Averaget cpu cycles SW per iteration: " << sw_avg_cpu_cycles() << std::endl;
          std::cout << "Averaget cpu cycles HW per iteration: " << hw_avg_cpu_cycles() << std::endl;
#endif
          std::cout << (success ? "Test passed!" : "Better luck next time...") << std::endl;
     } 
     if (A) sds_free(A);
     if (B) sds_free(B);
     if (Chw) sds_free(Chw); 
     if (Csw) free(Csw);
     return (success ? 0 : -1);
}
