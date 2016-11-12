#ifndef ARRAYCOPY_H_
#define ARRAYCOPY_H_

#define A_LENGTH 16

#pragma SDS data data_mover(Ain:AXIDMA_SIMPLE, Aout:AXIDMA_SIMPLE)
#pragma SDS data copy(Ain[0:n])
#pragma SDS data copy(Aout[0:n])
void arraycopy(unsigned int Ain[A_LENGTH], unsigned int Aout[A_LENGTH], int n);

#endif /* ARRAYCOPY_H_ */

