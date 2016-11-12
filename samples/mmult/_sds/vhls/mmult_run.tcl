open_project mmult
set_top mmult
add_files /home/student/ml634/2015/samples/mmult/mmult.cpp -cflags "-Wall -O3 -D __SDSCC__ -I /work/zhang/common/tools/xilinx/SDSoC/2016.1/aarch32-linux/include -I/home/student/ml634/2015/samples/mmult -D __SDSVHLS__ -I /home/student/ml634/2015/samples/mmult -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 8.5
config_rtl -reset_level low
source /home/student/ml634/2015/samples/mmult/_sds/vhls/mmult.tcl
# end synthesis directives
csynth_design
export_design -acc
