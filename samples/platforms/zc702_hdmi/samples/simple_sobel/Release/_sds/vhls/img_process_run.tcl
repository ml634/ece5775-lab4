open_project img_process
set_top img_process
add_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c -cflags "-Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I /work/zhang/common/tools/xilinx/SDSoC/2015.2.1/bin/../samples/platforms/zc702_hdmi/arm-xilinx-linux-gnueabi/include -I /work/zhang/common/tools/xilinx/SDSoC/2015.2.1/arm-xilinx-linux-gnueabi/include -I/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw -D __SDSVHLS__ -I /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95
config_rtl -reset_level low
source /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process.tcl
# end synthesis directives
csynth_design
export_design -acc
