
================================================================================
Example of an SDSoC platform with direct I/O

This teaching example demonstrates how to support direct I/O in SDSoC and is
documented in Chapter 4 of UG1146 - SDSoC Environment Platform and Libraries,
available in the <sdsoc_install_root>/docs directory.

The platform delivers input data to an application through a pf_read() API and
sends data from an application to output through a pf_write() API.  

You can use the "io2axis" and "axis2io" AXI4-Stream Data FIFO IP cores to cross
clock domains between the SDSoC "datamotion" clock domain and I/O specific clocks,
by reconfiguring these IP blocks.

When building applications in the SDSoC IDE, you must explicitly add 
     zc702_axis_io 
to the SDS++ Linker Libraries -l settings.
================================================================================
