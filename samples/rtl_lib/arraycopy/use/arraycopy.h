#ifndef ARRAYCOPY_H_
#define ARRAYCOPY_H_

#define N 32

#pragma SDS data data_mover(A:AXIDMA_SIMPLE, B:AXIDMA_SIMPLE)
#pragma SDS data copy(A[0:M])
#pragma SDS data copy(B[0:M])
int arraycopy_axis(int A[N], int B[N], int M);

#pragma SDS data zero_copy(a[0:M], b[0:M])
int arraycopy_aximm(int a[N], int b[N], int M);

#endif /* ARRAYCOPY_H_ */

