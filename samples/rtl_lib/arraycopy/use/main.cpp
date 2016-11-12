#include <iostream>
#include <stdlib.h>
#include "arraycopy.h"

#include "sds_lib.h"

static int arraycopy(int *A, int *B, int M)
{
     if (M < 0 || M > N)
          M = N;
     int tmp = A[0];
     int max = tmp;
     B[0] = tmp;
     for (int i = 1; i < M; i++) {
          tmp = A[i];
          B[i] = tmp;
          if (max < tmp)
               max = tmp;
     }
     return max;
}

static int compare(int *A, int *B, int *C, int *D, int M)
{
  for (int i = 0; i < M; i++) {
       if (!(A[i] == B[i] && B[i] == C[i] && C[i] == D[i])) {
            std::cout << "Error on index " << i
                      << ":  in: " << A[i] << "  aximm: " << B[i] 
                      << "  axis: " << C[i] << "  sw: " << C[i] << std::endl;
            return 1;
       }
  }
  return 0;
}

static int print_results(int* A, int* B, int *C, int *D)
{
     int i;
     std::cout << "   (in) A: ";
     for (i = 0; i < N; i++)
          std::cout << " " << A[i];
     std::cout << std::endl << "(aximm) B: ";
     for (i = 0; i < N; i++) 
          std::cout << " " << B[i];
     std::cout << std::endl << " (axis) C: ";
     for (i = 0; i < N; i++) 
          std::cout << " " << C[i];
     std::cout << std::endl << "   (sw) D: ";
     for (i = 0; i < N; i++) 
          std::cout << " " << D[i];
     std::cout << std::endl << std::endl;
     return 0;
}

int main(int argc, char *argv[])
{
     int *A, *B, *C, D[N];
     int result = 0;

     A = (int *) sds_alloc(N * sizeof(int));
     B = (int *) sds_alloc(N * sizeof(int));
     C = (int *) sds_alloc(N * sizeof(int));
     for (int i = 0; i < N; i++) {
          A[i] = i;
          B[i] = 0;
          C[i] = 0;
          D[i] = 0;
     }

     for (int i = 1; i <= N; i++) {
          for (int j = 0; j < N; j++) {
               A[j] = j + i;
               B[j] = 0;
               C[j] = 0;
               D[j] = 0;
          }
          arraycopy_aximm(A, B, i);
          arraycopy_axis(A, C, i);
          arraycopy(A, D, i);
          print_results(A, B, C, D);
          if (compare(A, B, C, D, i)) {
               result = 1;
               break;
          }
     }
     std::cout << (result ? "Test failed!" : "Test passed!") << std::endl;
     sds_free(A);
     sds_free(B);
     sds_free(C);
     return 0;
}

