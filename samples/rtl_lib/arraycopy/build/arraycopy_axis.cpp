#include <stdio.h>
#include <stdlib.h>

#include "arraycopy.h"

// Copy M values from array a to array b, or N (max array size) 
// values if M < 0 or M > N.
//
// Array arguments are mapped onto axis interfaces amenable to axi_dma_sg, 
// axi_dma_simple and axi_fifo datamovers, or direct connections.
//
// The transfer size M is passed to the hardware function with the 
// axi_lite datamover.
//
// @return max transferred value 
//
// See arraycopy.fcnmap.xml for the software/hardware interface mapping.
// 
// SDSoC will use this function definition to create a stub function to
// control the IP and transfer data between CPU and hardware function, and
// rewrite any calling code to invoke the generated stub in lieu of this
// function.
//
// For more information on importing HDL IP, refer to 
// UG1027 - Introduction to SDSoC, Chapter 16
// UG1146 - SDSoC Platforms and Libraries, Chapter 2
// 
int arraycopy_axis(int A[N], int B[N], int M) 
{
     // This function body can be non-empty if you want to provide a software
     // implemenation, but currently SDSoC does not support both hardware
     // and software implementations of the same function within the same
     // application.
}

