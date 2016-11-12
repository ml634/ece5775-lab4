set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_processing_system7_1_0/top_processing_system7_1_0.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_processing_system7_1_0/top_processing_system7_1_0.xdc id:1 order:EARLY scoped_inst:system_top_i/processing_system7_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_clk_wiz_2_0/top_clk_wiz_2_0.xdc id:2 order:EARLY scoped_inst:system_top_i/clk_wiz_2/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_vid_in_axi4s_1_0/top_v_vid_in_axi4s_1_0_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_vid_in_axi4s_1_0/top_v_vid_in_axi4s_1_0_clocks.xdc id:3 order:LATE scoped_inst:system_top_i/v_vid_in_axi4s_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tc_1_0/top_v_tc_1_0_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tc_1_0/top_v_tc_1_0_clocks.xdc id:4 order:LATE scoped_inst:system_top_i/v_tc_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_cresample_1_0/top_v_cresample_1_0_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_cresample_1_0/top_v_cresample_1_0_clocks.xdc id:5 order:LATE scoped_inst:system_top_i/v_cresample_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_ycrcb2rgb_1_0/top_v_ycrcb2rgb_1_0_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_ycrcb2rgb_1_0/top_v_ycrcb2rgb_1_0_clocks.xdc id:6 order:LATE scoped_inst:system_top_i/v_ycrcb2rgb_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tpg_1_0/top_v_tpg_1_0_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_v_tpg_1_0/top_v_tpg_1_0_clocks.xdc id:7 order:LATE scoped_inst:system_top_i/v_tpg_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/p0/ipi/zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc_clocks.xdc rfile:../../../zc702_hdmi.srcs/sources_1/bd/top/ip/top_img_process_0_if_0/top_img_process_0_if_0_xdc_clocks.xdc id:8 order:LATE scoped_inst:system_top_i/img_process_0_if/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.3
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_2 0.3
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_3 0.18
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.21
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:SCOPED_XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/vid_io_in_clk]] -to [all_registers -clock [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/aclk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/vid_io_in_clk]]]
set_property src_info {type:SCOPED_XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/aclk]] -to [all_registers -clock [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/vid_io_in_clk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_vid_in_axi4s_1/inst/aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/clk]] -to [all_registers -clock [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/s_axi_aclk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/clk]]]
set_property src_info {type:SCOPED_XDC file:4 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/s_axi_aclk]] -to [all_registers -clock [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/clk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_tc_1/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:5 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_cresample_1/U0/aclk]] -to [get_cells -hierarchical -filter {NAME =~ *U_VIDEO_CTRL*/*SYNC2PROCCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_cresample_1/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:5 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_cresample_1/U0/s_axi_aclk]] -to [get_cells -hierarchical -filter {NAME =~ *U_VIDEO_CTRL*/*SYNC2VIDCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_cresample_1/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:6 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_ycrcb2rgb_1/U0/aclk]] -to [get_cells -hierarchical -filter {NAME =~ *U_VIDEO_CTRL*/*SYNC2PROCCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_ycrcb2rgb_1/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:6 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_ycrcb2rgb_1/U0/s_axi_aclk]] -to [get_cells -hierarchical -filter {NAME =~ *U_VIDEO_CTRL*/*SYNC2VIDCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_ycrcb2rgb_1/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:7 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_tpg_1/U0/aclk]] -to [get_cells -hierarchical -filter {NAME =~ *video_cntrl*/*SYNC2PROCCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_tpg_1/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:7 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_pins system_top_i/v_tpg_1/U0/s_axi_aclk]] -to [get_cells -hierarchical -filter {NAME =~ *video_cntrl*/*SYNC2VIDCLK_I*/data_sync_reg[0]*}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/v_tpg_1/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_disable_timing -from CLK -to O [filter [all_fanout -from [get_ports *aclk] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]
set_property src_info {type:SCOPED_XDC file:8 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_from_reg*/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_to_reg*/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_from_reg*/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_to_reg*/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*AXI_LITE_IF_I/oarg_sw_length*_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d1_cdc_to_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/m_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*AXI_LITE_IF_I/OARG_USE_SW_LENGTH_GEN.reg_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d1_cdc_to_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/m_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_from_reg*/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_to_reg*/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/m_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*clkx*/rd_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*wr_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/m_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*clkx*/wr_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*rd_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_from_reg*/C}] -to [get_pins -hierarchical -filter {NAME=~*SYNC*cdc_to_reg*/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*clkx*/rd_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*wr_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*clkx*/wr_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*rd_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*/*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:8 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -hierarchical -filter {NAME=~*inst_fifo_gen/gconvfifo.g_fifo_ic.w_cnt_gc_reg[*]/C}] -to [get_pins -hierarchical -filter {NAME=~*rd_stg_inst/Q_reg_reg[*]/D}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins system_top_i/img_process_0_if/U0/s_axi_aclk]]]
