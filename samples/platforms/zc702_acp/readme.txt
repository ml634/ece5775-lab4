================================================================================
Example SDI platform with shared ACP port

This simple platform shows how to share a processing_system7 AXI port between an
SDSoC platform and generated system.  The platform shares the Accelerator
Coherent Port (S_AXI_ACP) by exporting a slave port on the connected
axi_interconnect IP.

For more detail on SDSoC platform requirements, and on this design, please refer
to the Tutorial Chapter 4 in ug-1146 SDSoC Platforms and Libraries in the
SDSoC docs directory.
================================================================================

