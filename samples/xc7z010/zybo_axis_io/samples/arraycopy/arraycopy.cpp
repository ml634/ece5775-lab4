#include <stdio.h>
#include <stdlib.h>

#include "zybo_axis_io.h"
#include "arraycopy.h"
#include "sds_lib.h"

//#define DEBUG

#ifdef DEBUG
static void print_u32_array(u32 A[N], char* a_name)
{
     int i;
     printf("%s = ", a_name);
     for (i = 0; i < N; i++) {
       printf("%x, ", (u32)A[i]);
     }
     printf("\n");
}
#endif

int main(int argc, char *argv[])
{
     u32 *wbuf = (u32 *) sds_alloc(N * sizeof(u32));
     u32 *rbuf = (u32 *) sds_alloc(N * sizeof(u32));

     if (wbuf == NULL || rbuf == NULL) {
          printf("Could not alloc buffer, exiting.\n");
          printf ("Test FAILED!\n");
          return -1;
     }
     int i, res = 0;
     for (i = 0; i < N; i++) {
          wbuf[i] = (u32) i + (u32) 0xDEAD4EAD;
          rbuf[i] = (u32) 0;
     }

     pf_write(wbuf);   // write to platform output
     pf_read(rbuf);    // read from platform input
                       // will be equal since platform provides loopback
#ifdef DEBUG
     print_u32_array(rbuf, (char*) "rbuf");
     print_u32_array(wbuf, (char*) "wbuf");
#endif
     for (i = 0; i < N; i++) {
          if (rbuf[i] != wbuf[i]) {
               printf("rbuf[%d] = %x, wbuf[%d] = %x do not match\n", 
                      i, rbuf[i], i, wbuf[i]);
               res = -1;
               break;
          }
     }
     sds_free(wbuf);
     sds_free(rbuf);
     printf("Test %s!\n", (res ? "FAILED" : "PASSED"));
     return res;
}
