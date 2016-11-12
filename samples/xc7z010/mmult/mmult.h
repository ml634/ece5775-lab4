#ifndef MMULT_ACC_H_
#define MMULT_ACC_H_

typedef short data_t;

#define A_NROWS 32
#define A_NCOLS 32
#define B_NROWS A_NCOLS
#define B_NCOLS 32
#define N A_NROWS * B_NCOLS

#pragma SDS data access_pattern(A:SEQUENTIAL, B:SEQUENTIAL, C:SEQUENTIAL)
void mmult (data_t A[A_NROWS*A_NCOLS], 
            data_t B[A_NCOLS*B_NCOLS], 
            data_t C[A_NROWS*B_NCOLS]);
void mmult_sw(data_t *A, data_t *B, data_t *C);

#endif /* MMULT_ACC_H_ */

