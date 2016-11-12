proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part xilinx.com:zc702:part0:0.9 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.cache/wt [current_project]
  set_property parent.project_path /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.xpr [current_project]
  set_property ip_repo_paths {
  /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.cache/ip
  /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/iprepo/repo
  /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.ipdefs
  /work/zhang/common/tools/xilinx/SDSoC/2015.2.1/data/ip/xilinx
} [current_project]
  set_property ip_output_repo /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.cache/ip [current_project]
  add_files -quiet /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.runs/synth_1/top_wrapper.dcp
  read_xdc -ref top_processing_system7_1_0 -cells inst /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_processing_system7_1_0/top_processing_system7_1_0.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_processing_system7_1_0/top_processing_system7_1_0.xdc]
  read_xdc -ref top_TPG_VDMA_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_TPG_VDMA_0/top_TPG_VDMA_0.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_TPG_VDMA_0/top_TPG_VDMA_0.xdc]
  read_xdc -prop_thru_buffers -ref top_proc_sys_reset_0_0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_0_0/top_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_0_0/top_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref top_proc_sys_reset_0_0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_0_0/top_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_0_0/top_proc_sys_reset_0_0.xdc]
  read_xdc -prop_thru_buffers -ref top_clk_wiz_2_0 -cells inst /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0_board.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0_board.xdc]
  read_xdc -ref top_clk_wiz_2_0 -cells inst /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0.xdc]
  read_xdc -prop_thru_buffers -ref top_proc_sys_reset_2_1 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_2_1/top_proc_sys_reset_2_1_board.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_2_1/top_proc_sys_reset_2_1_board.xdc]
  read_xdc -ref top_proc_sys_reset_2_1 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_2_1/top_proc_sys_reset_2_1.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_2_1/top_proc_sys_reset_2_1.xdc]
  read_xdc -prop_thru_buffers -ref top_proc_sys_reset_3_2 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_3_2/top_proc_sys_reset_3_2_board.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_3_2/top_proc_sys_reset_3_2_board.xdc]
  read_xdc -ref top_proc_sys_reset_3_2 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_3_2/top_proc_sys_reset_3_2.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_3_2/top_proc_sys_reset_3_2.xdc]
  read_xdc -prop_thru_buffers -ref top_proc_sys_reset_1_3 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_1_3/top_proc_sys_reset_1_3_board.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_1_3/top_proc_sys_reset_1_3_board.xdc]
  read_xdc -ref top_proc_sys_reset_1_3 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_1_3/top_proc_sys_reset_1_3.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_proc_sys_reset_1_3/top_proc_sys_reset_1_3.xdc]
  read_xdc -ref top_datamover_0_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_datamover_0_0/top_datamover_0_0.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_datamover_0_0/top_datamover_0_0.xdc]
  read_xdc -ref top_img_process_0_if_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc.xdc
  set_property processing_order EARLY [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc.xdc]
  read_xdc /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/constrs_1/imports/xdc/zc702_hdmi.xdc
  read_xdc -ref top_v_vid_in_axi4s_1_0 -cells inst /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_vid_in_axi4s_1_0/top_v_vid_in_axi4s_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_vid_in_axi4s_1_0/top_v_vid_in_axi4s_1_0_clocks.xdc]
  read_xdc -ref top_v_tc_1_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tc_1_0/top_v_tc_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tc_1_0/top_v_tc_1_0_clocks.xdc]
  read_xdc -ref top_v_cresample_1_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_cresample_1_0/top_v_cresample_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_cresample_1_0/top_v_cresample_1_0_clocks.xdc]
  read_xdc -ref top_TPG_VDMA_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_TPG_VDMA_0/top_TPG_VDMA_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_TPG_VDMA_0/top_TPG_VDMA_0_clocks.xdc]
  read_xdc -ref top_v_ycrcb2rgb_1_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_ycrcb2rgb_1_0/top_v_ycrcb2rgb_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_ycrcb2rgb_1_0/top_v_ycrcb2rgb_1_0_clocks.xdc]
  read_xdc -ref top_v_tpg_1_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tpg_1_0/top_v_tpg_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tpg_1_0/top_v_tpg_1_0_clocks.xdc]
  read_xdc -ref top_datamover_0_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_datamover_0_0/top_datamover_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_datamover_0_0/top_datamover_0_0_clocks.xdc]
  read_xdc -ref top_img_process_0_if_0 -cells U0 /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc_clocks.xdc]
  read_xdc -ref top_auto_us_df_0 -cells inst /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_auto_us_df_0_1/top_auto_us_df_0_clocks.xdc
  set_property processing_order LATE [get_files /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_auto_us_df_0_1/top_auto_us_df_0_clocks.xdc]
  link_design -top top_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force top_wrapper_opt.dcp
  catch {report_drc -file top_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file top_wrapper.hwdef}
  place_design -directive SSI_ExtraTimingOpt
  write_checkpoint -force top_wrapper_placed.dcp
  catch { report_io -file top_wrapper_io_placed.rpt }
  catch { report_utilization -file top_wrapper_utilization_placed.rpt -pb top_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file top_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_wrapper_routed.dcp
  catch { report_drc -file top_wrapper_drc_routed.rpt -pb top_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file top_wrapper_timing_summary_routed.rpt -rpx top_wrapper_timing_summary_routed.rpx }
  catch { report_power -file top_wrapper_power_routed.rpt -pb top_wrapper_power_summary_routed.pb }
  catch { report_route_status -file top_wrapper_route_status.rpt -pb top_wrapper_route_status.pb }
  catch { report_clock_utilization -file top_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force top_wrapper.bit 
  catch { write_sysdef -hwdef top_wrapper.hwdef -bitfile top_wrapper.bit -meminfo top_wrapper.mmi -ltxfile debug_nets.ltx -file top_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

