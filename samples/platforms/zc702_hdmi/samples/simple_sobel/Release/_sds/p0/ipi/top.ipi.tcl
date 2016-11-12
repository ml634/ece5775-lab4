puts "Running ipi tcl"
open_project /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.xpr
set_param cg.skipHiddenCheck true
set_property ip_repo_paths {/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/iprepo/repo /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.ipdefs /work/zhang/common/tools/xilinx/SDSoC/2015.2.1/data/ip/xilinx} [current_fileset]
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
close_project
open_project /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.xpr
set_param bd.get_bd_obj.warning_on_empty_result true
set_param bd.propagate.allow_set_readonly_param true
source top.bd.tcl
regenerate_bd_layout
save_bd_design
report_ip_status
validate_bd_design
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1
generate_target all [get_files -of_objects [get_fileset {sources_1}] *.bd]
file mkdir /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.sdk
write_hwdef -force -file /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.sdk/zc702_hdmi.hdf
close_project
