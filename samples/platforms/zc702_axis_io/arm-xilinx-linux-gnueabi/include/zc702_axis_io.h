#ifndef _ZC702_AXIS_IO
#define _ZC702_AXIS_IO

#define N  128

typedef unsigned int u32; 

void pf_write(u32 wbuf[N]);
void pf_read(u32 rbuf[N]);

#endif
