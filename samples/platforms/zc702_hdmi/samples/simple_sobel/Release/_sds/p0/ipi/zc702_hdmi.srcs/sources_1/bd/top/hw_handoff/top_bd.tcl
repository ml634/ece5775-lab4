
################################################################
# This is a generated script based on design: top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source top_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART xilinx.com:zc702:part0:0.9 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_1 ]

  # Create ports
  set HDMI_O_int_pin [ create_bd_port -dir I -from 0 -to 0 HDMI_O_int_pin ]
  set blank_o [ create_bd_port -dir O blank_o ]
  set d_pix_o [ create_bd_port -dir O -from 15 -to 0 d_pix_o ]
  set fmc_imageon_iic_Rst_b_pin [ create_bd_port -dir O -from 0 -to 0 fmc_imageon_iic_Rst_b_pin ]
  set hdmi_clk [ create_bd_port -dir I hdmi_clk ]
  set hsync_o [ create_bd_port -dir O hsync_o ]
  set io_hdmii_spdif [ create_bd_port -dir I io_hdmii_spdif ]
  set io_hdmii_video [ create_bd_port -dir I -from 15 -to 0 io_hdmii_video ]
  set pix_clk_o [ create_bd_port -dir O pix_clk_o ]
  set video_clk [ create_bd_port -dir I video_clk ]
  set vsync_o [ create_bd_port -dir O vsync_o ]

  # Create instance: TPG_VDMA, and set properties
  set TPG_VDMA [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 TPG_VDMA ]
  set_property -dict [ list CONFIG.c_enable_debug_info_6 {0} CONFIG.c_enable_debug_info_7 {0} CONFIG.c_enable_debug_info_8 {1} CONFIG.c_enable_debug_info_11 {1} CONFIG.c_enable_debug_info_14 {0} CONFIG.c_enable_debug_info_15 {1} CONFIG.c_include_mm2s {0} CONFIG.c_include_s2mm_dre {0} CONFIG.c_include_s2mm_sf {0} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_s2mm_genlock_mode {3} CONFIG.c_s2mm_linebuffer_depth {4096} CONFIG.c_s2mm_max_burst_length {16} CONFIG.c_s2mm_sof_enable {1}  ] $TPG_VDMA

  # Create instance: axi4_0, and set properties
  set axi4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi4_0 ]
  set_property -dict [ list CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.M00_HAS_DATA_FIFO {2} CONFIG.M00_HAS_REGSLICE {1} CONFIG.NUM_MI {1} CONFIG.NUM_SI {2} CONFIG.S00_HAS_REGSLICE {1} CONFIG.S01_HAS_REGSLICE {1} CONFIG.STRATEGY {2}  ] $axi4_0

  # Create instance: axi4_lite, and set properties
  set axi4_lite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi4_lite ]
  set_property -dict [ list CONFIG.M06_HAS_REGSLICE {1} CONFIG.NUM_MI {6}  ] $axi4_lite

  # Create instance: axi_interconnect_M_AXI_GP1, and set properties
  set axi_interconnect_M_AXI_GP1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_M_AXI_GP1 ]
  set_property -dict [ list CONFIG.M00_HAS_REGSLICE {1} CONFIG.M01_HAS_REGSLICE {1} CONFIG.NUM_MI {2} CONFIG.NUM_SI {1} CONFIG.S00_HAS_REGSLICE {1} CONFIG.STRATEGY {2}  ] $axi_interconnect_M_AXI_GP1

  # Create instance: axi_interconnect_S_AXI_HP1, and set properties
  set axi_interconnect_S_AXI_HP1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_S_AXI_HP1 ]
  set_property -dict [ list CONFIG.M00_HAS_DATA_FIFO {2} CONFIG.M00_HAS_REGSLICE {1} CONFIG.NUM_MI {1} CONFIG.NUM_SI {3} CONFIG.S00_HAS_DATA_FIFO {2} CONFIG.S00_HAS_REGSLICE {1} CONFIG.S01_HAS_DATA_FIFO {2} CONFIG.S01_HAS_REGSLICE {1} CONFIG.S02_HAS_DATA_FIFO {2} CONFIG.S02_HAS_REGSLICE {1} CONFIG.STRATEGY {2}  ] $axi_interconnect_S_AXI_HP1

  # Create instance: axis_rtr_datamover_0, and set properties
  set axis_rtr_datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_stream_router:1.0 axis_rtr_datamover_0 ]
  set_property -dict [ list CONFIG.C_M_AXIS_RXD_TDATA_WIDTH {64} CONFIG.C_M_AXIS_TDATA_WIDTH {64} CONFIG.C_NUM_MASTER_SLOTS {1} CONFIG.C_NUM_SLAVE_SLOTS {1} CONFIG.C_S_AXIS_TDATA_WIDTH {64} CONFIG.C_S_AXIS_TXD_TDATA_WIDTH {64}  ] $axis_rtr_datamover_0

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list CONFIG.M_HAS_TKEEP {1} CONFIG.M_HAS_TLAST {1} CONFIG.M_TDATA_NUM_BYTES {4} CONFIG.M_TUSER_WIDTH {1} CONFIG.S_HAS_TKEEP {0} CONFIG.S_HAS_TLAST {1} CONFIG.S_TDATA_NUM_BYTES {3} CONFIG.S_TUSER_WIDTH {1} CONFIG.TDATA_REMAP {8'b11111111,tdata[23:16],tdata[7:0],tdata[15:8]} CONFIG.TUSER_REMAP {tuser[0:0]}  ] $axis_subset_converter_0

  # Create instance: binary_to_grey_1, and set properties
  set binary_to_grey_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:binary_to_grey:1.0 binary_to_grey_1 ]

  # Create instance: clk_wiz_2, and set properties
  set clk_wiz_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_2 ]
  set_property -dict [ list CONFIG.CLKOUT1_JITTER {133.854} CONFIG.CLKOUT1_PHASE_ERROR {94.994} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {75.000} CONFIG.CLKOUT2_JITTER {116.798} CONFIG.CLKOUT2_PHASE_ERROR {94.994} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {150.000} CONFIG.CLKOUT2_USED {true} CONFIG.NUM_OUT_CLKS {2} CONFIG.USE_INCLK_SWITCHOVER {false}  ] $clk_wiz_2

  # Create instance: datamover_0, and set properties
  set datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 datamover_0 ]
  set_property -dict [ list CONFIG.c_dlytmr_resolution {1250} CONFIG.c_include_mm2s {1} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_mm2s_sf {1} CONFIG.c_include_s2mm {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_include_s2mm_sf {1} CONFIG.c_include_sg {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_mm2s_burst_size {64} CONFIG.c_s2mm_burst_size {64} CONFIG.c_s_axis_s2mm_tdata_width {64} CONFIG.c_sg_include_stscntrl_strm {1} CONFIG.c_sg_length_width {23} CONFIG.c_sg_use_stsapp_length {0}  ] $datamover_0

  # Create instance: fmc_imageon_hdmi_in_1, and set properties
  set fmc_imageon_hdmi_in_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fmc_imageon_hdmi_in:1.0 fmc_imageon_hdmi_in_1 ]

  # Create instance: img_process_0, and set properties
  set img_process_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:img_process:1.0 img_process_0 ]

  # Create instance: img_process_0_if, and set properties
  set img_process_0_if [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_accelerator_adapter:2.1 img_process_0_if ]
  set_property -dict [ list CONFIG.C_AP_IARG_0_DIM_1 {1024} CONFIG.C_AP_IARG_0_DWIDTH {32} CONFIG.C_AP_IARG_0_TYPE {1} CONFIG.C_AP_IARG_0_WIDTH {32} CONFIG.C_AP_OARG_0_DIM_1 {1024} CONFIG.C_AP_OARG_0_DWIDTH {32} CONFIG.C_AP_OARG_0_TYPE {1} CONFIG.C_AP_OARG_0_WIDTH {32} CONFIG.C_INPUT_SCALAR_0_WIDTH {32} CONFIG.C_INPUT_SCALAR_1_WIDTH {32} CONFIG.C_INPUT_SCALAR_2_WIDTH {32} CONFIG.C_M_AXIS_HAS_TKEEP {1} CONFIG.C_M_AXIS_HAS_TSTRB {1} CONFIG.C_M_AXIS_TDATA_WIDTH {64} CONFIG.C_N_INPUT_ARGS {1} CONFIG.C_N_INPUT_SCALARS {3} CONFIG.C_N_OUTPUT_ARGS {1} CONFIG.C_S_AXIS_TDATA_WIDTH {64}  ] $img_process_0_if

  # Create instance: logicvc_1, and set properties
  set logicvc_1 [ create_bd_cell -type ip -vlnv xylon:logicbricks:logicvc:3.01.a logicvc_1 ]
  set_property -dict [ list CONFIG.C_BUFFER_0_OFFSET {1080} CONFIG.C_BUFFER_1_OFFSET {1080} CONFIG.C_DISPLAY_COLOR_SPACE {1} CONFIG.C_DISPLAY_INTERFACE {0} CONFIG.C_INCREASE_FIFO {2} CONFIG.C_LAYER_1_DATA_WIDTH {24} CONFIG.C_LAYER_1_OFFSET {1620} CONFIG.C_LAYER_2_DATA_WIDTH {24} CONFIG.C_M_AXI_DATA_WIDTH {64} CONFIG.C_NUM_OF_LAYERS {3} CONFIG.C_ROW_STRIDE {2048} CONFIG.C_USE_BACKGROUND {1} CONFIG.C_USE_XTREME_DSP {1} CONFIG.C_VMEM_BASEADDR {0x30000000} CONFIG.C_VMEM_HIGHADDR {0x37ffffff}  ] $logicvc_1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_0

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_1

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_2

  # Create instance: proc_sys_reset_3, and set properties
  set proc_sys_reset_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_3 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_3

  # Create instance: processing_system7_1, and set properties
  set processing_system7_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_1 ]
  set_property -dict [ list CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {25.000000} CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {166.666672} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CLK0_FREQ {100000000} CONFIG.PCW_CLK1_FREQ {142857132} \
CONFIG.PCW_CLK2_FREQ {100000000} CONFIG.PCW_CLK3_FREQ {166666672} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {100 Mbps} CONFIG.PCW_ENET0_RESET_ENABLE {1} \
CONFIG.PCW_ENET0_RESET_IO {MIO 11} CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_EN_4K_TIMER {0} CONFIG.PCW_EN_CLK0_PORT {1} \
CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {1} CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
CONFIG.PCW_EN_DDR {1} CONFIG.PCW_EN_EMIO_GPIO {1} \
CONFIG.PCW_EN_EMIO_I2C1 {1} CONFIG.PCW_EN_EMIO_TTC0 {1} \
CONFIG.PCW_EN_ENET0 {1} CONFIG.PCW_EN_GPIO {1} \
CONFIG.PCW_EN_I2C0 {1} CONFIG.PCW_EN_I2C1 {1} \
CONFIG.PCW_EN_RST0_PORT {1} CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_EN_RST2_PORT {0} CONFIG.PCW_EN_RST3_PORT {0} \
CONFIG.PCW_EN_SDIO0 {1} CONFIG.PCW_EN_TTC0 {1} \
CONFIG.PCW_EN_UART1 {1} CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK_CLK1_BUF {true} CONFIG.PCW_FCLK_CLK2_BUF {true} \
CONFIG.PCW_FCLK_CLK3_BUF {true} CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142} CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {166.666672} CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {1} CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_EMIO_GPIO_IO {64} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {1} CONFIG.PCW_I2C0_RESET_IO {MIO 13} \
CONFIG.PCW_I2C1_I2C1_IO {EMIO} CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_0_PULLUP {enabled} CONFIG.PCW_MIO_0_SLEW {slow} \
CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_10_PULLUP {enabled} \
CONFIG.PCW_MIO_10_SLEW {slow} CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_11_PULLUP {enabled} CONFIG.PCW_MIO_11_SLEW {slow} \
CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_12_PULLUP {enabled} \
CONFIG.PCW_MIO_12_SLEW {slow} CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_13_PULLUP {enabled} CONFIG.PCW_MIO_13_SLEW {slow} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_14_PULLUP {enabled} \
CONFIG.PCW_MIO_14_SLEW {slow} CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_15_PULLUP {enabled} CONFIG.PCW_MIO_15_SLEW {slow} \
CONFIG.PCW_MIO_16_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_16_SLEW {slow} CONFIG.PCW_MIO_17_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} CONFIG.PCW_MIO_17_SLEW {slow} \
CONFIG.PCW_MIO_18_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_18_SLEW {slow} CONFIG.PCW_MIO_19_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} CONFIG.PCW_MIO_19_SLEW {slow} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_1_PULLUP {enabled} \
CONFIG.PCW_MIO_1_SLEW {slow} CONFIG.PCW_MIO_20_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} CONFIG.PCW_MIO_20_SLEW {slow} \
CONFIG.PCW_MIO_21_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_21_SLEW {slow} CONFIG.PCW_MIO_22_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} CONFIG.PCW_MIO_22_SLEW {slow} \
CONFIG.PCW_MIO_23_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_23_SLEW {slow} CONFIG.PCW_MIO_24_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} CONFIG.PCW_MIO_24_SLEW {slow} \
CONFIG.PCW_MIO_25_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_25_SLEW {slow} CONFIG.PCW_MIO_26_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} CONFIG.PCW_MIO_26_SLEW {slow} \
CONFIG.PCW_MIO_27_IOTYPE {HSTL 1.8V} CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_27_SLEW {slow} CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {disabled} CONFIG.PCW_MIO_28_SLEW {slow} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_29_SLEW {slow} CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_2_SLEW {slow} CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {disabled} CONFIG.PCW_MIO_30_SLEW {slow} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_31_SLEW {slow} CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {disabled} CONFIG.PCW_MIO_32_SLEW {slow} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_33_SLEW {slow} CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {disabled} CONFIG.PCW_MIO_34_SLEW {slow} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_35_SLEW {slow} CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {disabled} CONFIG.PCW_MIO_36_SLEW {slow} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_37_SLEW {slow} CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {disabled} CONFIG.PCW_MIO_38_SLEW {slow} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_39_SLEW {slow} CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_3_SLEW {slow} CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {disabled} CONFIG.PCW_MIO_40_SLEW {slow} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_41_PULLUP {disabled} \
CONFIG.PCW_MIO_41_SLEW {slow} CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {disabled} CONFIG.PCW_MIO_42_SLEW {slow} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_43_PULLUP {disabled} \
CONFIG.PCW_MIO_43_SLEW {slow} CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {disabled} CONFIG.PCW_MIO_44_SLEW {slow} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_45_PULLUP {disabled} \
CONFIG.PCW_MIO_45_SLEW {slow} CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_46_PULLUP {enabled} CONFIG.PCW_MIO_46_SLEW {slow} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_48_PULLUP {disabled} CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_49_PULLUP {disabled} \
CONFIG.PCW_MIO_49_SLEW {slow} CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_4_SLEW {slow} CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_50_PULLUP {enabled} CONFIG.PCW_MIO_50_SLEW {slow} \
CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_51_PULLUP {enabled} \
CONFIG.PCW_MIO_51_SLEW {slow} CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {disabled} CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_53_PULLUP {disabled} \
CONFIG.PCW_MIO_53_SLEW {slow} CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_5_SLEW {slow} CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_6_SLEW {slow} CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_7_SLEW {slow} CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_8_SLEW {slow} CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_9_PULLUP {enabled} CONFIG.PCW_MIO_9_SLEW {slow} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#USB Reset#GPIO#GPIO#GPIO#ENET Reset#GPIO#I2C Reset#GPIO#SD 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#GPIO#UART 1#UART 1#I2C 0#I2C 0#Enet 0#Enet 0} CONFIG.PCW_MIO_TREE_SIGNALS {cd#gpio[1]#gpio[2]#gpio[3]#gpio[4]#gpio[5]#gpio[6]#reset#gpio[8]#gpio[9]#gpio[10]#reset#gpio[12]#reset#gpio[14]#wp#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#tx#rx#scl#sda#mdc#mdio} \
CONFIG.PCW_M_AXI_GP0_FREQMHZ {75} CONFIG.PCW_NAND_CYCLES_T_AR {0} \
CONFIG.PCW_NAND_CYCLES_T_CLR {0} CONFIG.PCW_NAND_CYCLES_T_RC {2} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} CONFIG.PCW_NAND_CYCLES_T_RR {0} \
CONFIG.PCW_NAND_CYCLES_T_WC {2} CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} CONFIG.PCW_NOR_CS0_T_RC {2} \
CONFIG.PCW_NOR_CS0_T_TR {1} CONFIG.PCW_NOR_CS0_T_WC {2} \
CONFIG.PCW_NOR_CS0_T_WP {1} CONFIG.PCW_NOR_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {2} CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {2} CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {2} CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {2} CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {2} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.063} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.062} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.065} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.083} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.007} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.010} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.048} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {1} CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 1.8V} CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} CONFIG.PCW_SD0_GRP_CD_IO {MIO 0} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 15} CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP0_FREQMHZ {150} CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_TTC0_TTC0_IO {EMIO} CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART1_BAUD_RATE {115200} CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BL {8} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.537} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.442} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.464} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.521} CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.217} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.133} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.089} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.248} CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M8 HX-15E} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} CONFIG.PCW_USB0_RESET_ENABLE {1} \
CONFIG.PCW_USB0_RESET_IO {MIO 7} CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
CONFIG.PCW_USE_CROSS_TRIGGER {0} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_M_AXI_GP0 {1} CONFIG.PCW_USE_M_AXI_GP1 {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.PCW_USE_S_AXI_HP1 {1} \
CONFIG.PCW_USE_S_AXI_HP2 {0} CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
CONFIG.preset {ZC702}  ] $processing_system7_1

  # Create instance: tpg_rst, and set properties
  set tpg_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 tpg_rst ]
  set_property -dict [ list CONFIG.DIN_WIDTH {8}  ] $tpg_rst

  # Create instance: tpg_rst1, and set properties
  set tpg_rst1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 tpg_rst1 ]
  set_property -dict [ list CONFIG.DIN_FROM {6} CONFIG.DIN_TO {6} CONFIG.DIN_WIDTH {8}  ] $tpg_rst1

  # Create instance: tpg_util_flipflop_1, and set properties
  set tpg_util_flipflop_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 tpg_util_flipflop_1 ]
  set_property -dict [ list CONFIG.C_SET_RST_HIGH {0} CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_RST {0} CONFIG.C_USE_SET {0}  ] $tpg_util_flipflop_1

  # Create instance: util_reduced_logic_1, and set properties
  set util_reduced_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_1 ]
  set_property -dict [ list CONFIG.C_SIZE {3}  ] $util_reduced_logic_1

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list CONFIG.C_OPERATION {not} CONFIG.C_SIZE {1}  ] $util_vector_logic_1

  # Create instance: v_cresample_1, and set properties
  set v_cresample_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_cresample:4.0 v_cresample_1 ]
  set_property -dict [ list CONFIG.convert_type {2} CONFIG.has_axi4_lite {true}  ] $v_cresample_1

  # Create instance: v_tc_1, and set properties
  set v_tc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_1 ]
  set_property -dict [ list CONFIG.VIDEO_MODE {1080p} CONFIG.enable_detection {true} CONFIG.horizontal_sync_detection {false} CONFIG.vertical_blank_generation {true} CONFIG.vertical_sync_detection {false}  ] $v_tc_1

  # Create instance: v_tpg_1, and set properties
  set v_tpg_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:6.0 v_tpg_1 ]
  set_property -dict [ list CONFIG.pattern_control {10}  ] $v_tpg_1

  # Create instance: v_vid_in_axi4s_1, and set properties
  set v_vid_in_axi4s_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:3.0 v_vid_in_axi4s_1 ]
  set_property -dict [ list CONFIG.C_M_AXIS_VIDEO_FORMAT {0}  ] $v_vid_in_axi4s_1

  # Create instance: v_ycrcb2rgb_1, and set properties
  set v_ycrcb2rgb_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_ycrcb2rgb:7.1 v_ycrcb2rgb_1 ]
  set_property -dict [ list CONFIG.HAS_AXI4_LITE {true} CONFIG.HAS_INTC_IF {false} CONFIG.Output_Range {0_to_255_for_Computer_Graphics} CONFIG.Standard_Sel {HD_ITU_709__1250_PAL}  ] $v_ycrcb2rgb_1

  # Create instance: vbuff, and set properties
  set vbuff [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 vbuff ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $vbuff

  # Create instance: vid_sel, and set properties
  set vid_sel [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 vid_sel ]
  set_property -dict [ list CONFIG.DIN_FROM {3} CONFIG.DIN_TO {3} CONFIG.DIN_WIDTH {8}  ] $vid_sel

  # Create instance: vsrc_sel_1, and set properties
  set vsrc_sel_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:vsrc_sel:1.0 vsrc_sel_1 ]
  set_property -dict [ list CONFIG.C_NUM_CHANNELS {1}  ] $vsrc_sel_1

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list CONFIG.IN0_WIDTH {8} CONFIG.IN1_WIDTH {8}  ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list CONFIG.NUM_PORTS {5}  ] $xlconcat_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $xlconstant_0

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {16}  ] $xlconstant_5

  # Create instance: xlconstant_6, and set properties
  set xlconstant_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_6 ]
  set_property -dict [ list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {5}  ] $xlconstant_6

  # Create instance: xlconstant_one, and set properties
  set xlconstant_one [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_one ]

  # Create instance: xlconstant_zero, and set properties
  set xlconstant_zero [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $xlconstant_zero

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list CONFIG.DIN_FROM {3} CONFIG.DIN_TO {2} CONFIG.DIN_WIDTH {6}  ] $xlslice_1

  # Create instance: xlslice_15downto8, and set properties
  set xlslice_15downto8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_15downto8 ]
  set_property -dict [ list CONFIG.DIN_FROM {15} CONFIG.DIN_TO {8} CONFIG.DIN_WIDTH {16}  ] $xlslice_15downto8

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list CONFIG.DIN_FROM {7} CONFIG.DIN_WIDTH {64}  ] $xlslice_2

  # Create instance: xlslice_7downto0, and set properties
  set xlslice_7downto0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7downto0 ]
  set_property -dict [ list CONFIG.DIN_FROM {7} CONFIG.DIN_TO {0} CONFIG.DIN_WIDTH {16}  ] $xlslice_7downto0

  # Create interface connections
  connect_bd_intf_net -intf_net axi4_lite_m05_axi [get_bd_intf_pins axi4_lite/M05_AXI] [get_bd_intf_pins logicvc_1/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_m00_axi [get_bd_intf_pins axi4_0/M00_AXI] [get_bd_intf_pins processing_system7_1/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_interconnect_2_m00_axi [get_bd_intf_pins axi4_lite/M00_AXI] [get_bd_intf_pins v_tc_1/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m01_axi [get_bd_intf_pins TPG_VDMA/S_AXI_LITE] [get_bd_intf_pins axi4_lite/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m02_axi [get_bd_intf_pins axi4_lite/M02_AXI] [get_bd_intf_pins v_cresample_1/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m03_axi [get_bd_intf_pins axi4_lite/M03_AXI] [get_bd_intf_pins v_ycrcb2rgb_1/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m04_axi [get_bd_intf_pins axi4_lite/M04_AXI] [get_bd_intf_pins v_tpg_1/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_M_AXI_GP1_M00_AXI [get_bd_intf_pins axi_interconnect_M_AXI_GP1/M00_AXI] [get_bd_intf_pins img_process_0_if/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M_AXI_GP1_M01_AXI [get_bd_intf_pins axi_interconnect_M_AXI_GP1/M01_AXI] [get_bd_intf_pins datamover_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_S_AXI_HP1_M00_AXI [get_bd_intf_pins axi_interconnect_S_AXI_HP1/M00_AXI] [get_bd_intf_pins processing_system7_1/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_vdma_1_m_axi_s2mm [get_bd_intf_pins TPG_VDMA/M_AXI_S2MM] [get_bd_intf_pins axi4_0/S00_AXI]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_M_AXIS_0 [get_bd_intf_pins axis_rtr_datamover_0/M_AXIS_0] [get_bd_intf_pins img_process_0_if/S_AXIS_0]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_m_axis_rxd [get_bd_intf_pins axis_rtr_datamover_0/m_axis_rxd] [get_bd_intf_pins datamover_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_m_axis_rxs [get_bd_intf_pins axis_rtr_datamover_0/m_axis_rxs] [get_bd_intf_pins datamover_0/S_AXIS_STS]
  connect_bd_intf_net -intf_net axis_subset_converter_0_m_axis [get_bd_intf_pins TPG_VDMA/S_AXIS_S2MM] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net datamover_0_M_AXIS_CNTRL [get_bd_intf_pins axis_rtr_datamover_0/s_axis_txc] [get_bd_intf_pins datamover_0/M_AXIS_CNTRL]
  connect_bd_intf_net -intf_net datamover_0_M_AXIS_MM2S [get_bd_intf_pins axis_rtr_datamover_0/s_axis_txd] [get_bd_intf_pins datamover_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_MM2S [get_bd_intf_pins axi_interconnect_S_AXI_HP1/S01_AXI] [get_bd_intf_pins datamover_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_S2MM [get_bd_intf_pins axi_interconnect_S_AXI_HP1/S02_AXI] [get_bd_intf_pins datamover_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_SG [get_bd_intf_pins axi_interconnect_S_AXI_HP1/S00_AXI] [get_bd_intf_pins datamover_0/M_AXI_SG]
  connect_bd_intf_net -intf_net img_process_0_if_AP_CTRL [get_bd_intf_pins img_process_0/ap_ctrl] [get_bd_intf_pins img_process_0_if/AP_CTRL]
  connect_bd_intf_net -intf_net img_process_0_if_M_AXIS_0 [get_bd_intf_pins axis_rtr_datamover_0/S_AXIS_0] [get_bd_intf_pins img_process_0_if/M_AXIS_0]
  connect_bd_intf_net -intf_net img_process_0_rgb_data_in [get_bd_intf_pins img_process_0/rgb_data_in] [get_bd_intf_pins img_process_0_if/AP_FIFO_IARG_0]
  connect_bd_intf_net -intf_net img_process_0_rgb_data_out [get_bd_intf_pins img_process_0/rgb_data_out] [get_bd_intf_pins img_process_0_if/AP_FIFO_OARG_0]
  connect_bd_intf_net -intf_net processing_system7_1_M_AXI_GP1 [get_bd_intf_pins axi_interconnect_M_AXI_GP1/S00_AXI] [get_bd_intf_pins processing_system7_1/M_AXI_GP1]
  connect_bd_intf_net -intf_net processing_system7_1_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_1/DDR]
  connect_bd_intf_net -intf_net processing_system7_1_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_1/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_1_iic_1 [get_bd_intf_ports IIC_1] [get_bd_intf_pins processing_system7_1/IIC_1]
  connect_bd_intf_net -intf_net s00_axi_1 [get_bd_intf_pins axi4_lite/S00_AXI] [get_bd_intf_pins processing_system7_1/M_AXI_GP0]
  connect_bd_intf_net -intf_net s01_axi_1 [get_bd_intf_pins axi4_0/S01_AXI] [get_bd_intf_pins logicvc_1/m_axi]
  connect_bd_intf_net -intf_net v_cresample_1_video_out [get_bd_intf_pins v_cresample_1/video_out] [get_bd_intf_pins v_ycrcb2rgb_1/video_in]
  connect_bd_intf_net -intf_net v_tpg_1_video_out [get_bd_intf_pins v_cresample_1/video_in] [get_bd_intf_pins v_tpg_1/video_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_video_out [get_bd_intf_pins v_tpg_1/video_in] [get_bd_intf_pins v_vid_in_axi4s_1/video_out]
  connect_bd_intf_net -intf_net v_ycrcb2rgb_1_video_out [get_bd_intf_pins axis_subset_converter_0/S_AXIS] [get_bd_intf_pins v_ycrcb2rgb_1/video_out]

  # Create port connections
  connect_bd_net -net Op1 [get_bd_ports HDMI_O_int_pin] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net axi_vdma_1_s2mm_fsync_out [get_bd_pins TPG_VDMA/s2mm_fsync_out] [get_bd_pins vbuff/In1] [get_bd_pins vbuff/In2]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins TPG_VDMA/s2mm_introut] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net axi_vdma_1_s2mm_prmry_reset_out_n [get_bd_pins TPG_VDMA/s2mm_prmry_reset_out_n] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net binary_to_grey_1_grey [get_bd_pins TPG_VDMA/s2mm_frame_ptr_in] [get_bd_pins binary_to_grey_1/grey]
  connect_bd_net -net clk_1 [get_bd_ports hdmi_clk] [get_bd_pins fmc_imageon_hdmi_in_1/clk] [get_bd_pins vsrc_sel_1/video_clk_2]
  connect_bd_net -net clk_150mhz [get_bd_pins TPG_VDMA/m_axi_s2mm_aclk] [get_bd_pins TPG_VDMA/s_axis_s2mm_aclk] [get_bd_pins axi4_0/ACLK] [get_bd_pins axi4_0/M00_ACLK] [get_bd_pins axi4_0/S00_ACLK] [get_bd_pins axi4_0/S01_ACLK] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins clk_wiz_2/clk_out2] [get_bd_pins logicvc_1/M_AXI_ACLK] [get_bd_pins logicvc_1/vclk] [get_bd_pins processing_system7_1/S_AXI_HP0_ACLK] [get_bd_pins v_cresample_1/aclk] [get_bd_pins v_tpg_1/aclk] [get_bd_pins v_vid_in_axi4s_1/aclk] [get_bd_pins v_ycrcb2rgb_1/aclk]
  connect_bd_net -net clk_75mhz [get_bd_pins TPG_VDMA/s_axi_lite_aclk] [get_bd_pins axi4_lite/ACLK] [get_bd_pins axi4_lite/M00_ACLK] [get_bd_pins axi4_lite/M01_ACLK] [get_bd_pins axi4_lite/M02_ACLK] [get_bd_pins axi4_lite/M03_ACLK] [get_bd_pins axi4_lite/M04_ACLK] [get_bd_pins axi4_lite/M05_ACLK] [get_bd_pins axi4_lite/S00_ACLK] [get_bd_pins clk_wiz_2/clk_out1] [get_bd_pins logicvc_1/S_AXI_ACLK] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_1/M_AXI_GP0_ACLK] [get_bd_pins tpg_util_flipflop_1/Clk] [get_bd_pins v_cresample_1/s_axi_aclk] [get_bd_pins v_tc_1/s_axi_aclk] [get_bd_pins v_tpg_1/s_axi_aclk] [get_bd_pins v_ycrcb2rgb_1/s_axi_aclk]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_2/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net clkid1 [get_bd_pins axi_interconnect_M_AXI_GP1/ACLK] [get_bd_pins axi_interconnect_M_AXI_GP1/M00_ACLK] [get_bd_pins axi_interconnect_M_AXI_GP1/M01_ACLK] [get_bd_pins axi_interconnect_M_AXI_GP1/S00_ACLK] [get_bd_pins axi_interconnect_S_AXI_HP1/ACLK] [get_bd_pins axi_interconnect_S_AXI_HP1/M00_ACLK] [get_bd_pins axi_interconnect_S_AXI_HP1/S00_ACLK] [get_bd_pins axi_interconnect_S_AXI_HP1/S01_ACLK] [get_bd_pins axi_interconnect_S_AXI_HP1/S02_ACLK] [get_bd_pins axis_rtr_datamover_0/M_AXIS_0_ACLK] [get_bd_pins axis_rtr_datamover_0/S_AXIS_0_ACLK] [get_bd_pins axis_rtr_datamover_0/m_axis_rxd_aclk] [get_bd_pins axis_rtr_datamover_0/m_axis_rxs_aclk] [get_bd_pins axis_rtr_datamover_0/s_axis_txc_aclk] [get_bd_pins axis_rtr_datamover_0/s_axis_txd_aclk] [get_bd_pins datamover_0/m_axi_mm2s_aclk] [get_bd_pins datamover_0/m_axi_s2mm_aclk] [get_bd_pins datamover_0/m_axi_sg_aclk] [get_bd_pins datamover_0/s_axi_lite_aclk] [get_bd_pins img_process_0/ap_clk] [get_bd_pins img_process_0_if/aclk] [get_bd_pins img_process_0_if/m_axis_aclk] [get_bd_pins img_process_0_if/s_axi_aclk] [get_bd_pins img_process_0_if/s_axis_aclk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins processing_system7_1/FCLK_CLK1] [get_bd_pins processing_system7_1/M_AXI_GP1_ACLK] [get_bd_pins processing_system7_1/S_AXI_HP1_ACLK]
  connect_bd_net -net clkid2 [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins processing_system7_1/FCLK_CLK2]
  connect_bd_net -net clkid3 [get_bd_pins proc_sys_reset_3/slowest_sync_clk] [get_bd_pins processing_system7_1/FCLK_CLK3]
  connect_bd_net -net datamover_0_mm2s_introut [get_bd_pins datamover_0/mm2s_introut] [get_bd_pins xlconcat_3/In3]
  connect_bd_net -net datamover_0_s2mm_introut [get_bd_pins datamover_0/s2mm_introut] [get_bd_pins xlconcat_3/In4]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_active_video_o [get_bd_pins fmc_imageon_hdmi_in_1/xsvi_active_video_o] [get_bd_pins v_tc_1/active_video_in] [get_bd_pins vsrc_sel_1/de_2]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_hblank_o [get_bd_pins fmc_imageon_hdmi_in_1/xsvi_hblank_o] [get_bd_pins v_tc_1/hblank_in] [get_bd_pins vsrc_sel_1/hsync_2]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_vblank_o [get_bd_pins fmc_imageon_hdmi_in_1/xsvi_vblank_o] [get_bd_pins v_tc_1/vblank_in] [get_bd_pins vsrc_sel_1/vsync_2]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_video_data_o [get_bd_pins fmc_imageon_hdmi_in_1/xsvi_video_data_o] [get_bd_pins v_vid_in_axi4s_1/vid_data]
  connect_bd_net -net img_process_0_if_ap_iscalar_0_dout [get_bd_pins img_process_0/isobelInvert] [get_bd_pins img_process_0_if/ap_iscalar_0_dout]
  connect_bd_net -net img_process_0_if_ap_iscalar_1_dout [get_bd_pins img_process_0/iminsobelSensitivity] [get_bd_pins img_process_0_if/ap_iscalar_1_dout]
  connect_bd_net -net img_process_0_if_ap_iscalar_2_dout [get_bd_pins img_process_0/imaxsobelSensitivity] [get_bd_pins img_process_0_if/ap_iscalar_2_dout]
  connect_bd_net -net img_process_0_if_aresetn [get_bd_pins img_process_0/ap_rst_n] [get_bd_pins img_process_0_if/aresetn]
  connect_bd_net -net io_hdmii_spdif_1 [get_bd_ports io_hdmii_spdif] [get_bd_pins fmc_imageon_hdmi_in_1/io_hdmii_spdif]
  connect_bd_net -net io_hdmii_video_1 [get_bd_ports io_hdmii_video] [get_bd_pins fmc_imageon_hdmi_in_1/io_hdmii_video]
  connect_bd_net -net logicvc_1_blank_o [get_bd_ports blank_o] [get_bd_pins logicvc_1/blank_o]
  connect_bd_net -net logicvc_1_d_pix_o [get_bd_ports d_pix_o] [get_bd_pins logicvc_1/d_pix_o]
  connect_bd_net -net logicvc_1_hsync_o [get_bd_ports hsync_o] [get_bd_pins logicvc_1/hsync_o]
  connect_bd_net -net logicvc_1_interrupt [get_bd_pins logicvc_1/interrupt] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net logicvc_1_pix_clk_o [get_bd_ports pix_clk_o] [get_bd_pins logicvc_1/pix_clk_o]
  connect_bd_net -net logicvc_1_vsync_o [get_bd_ports vsync_o] [get_bd_pins logicvc_1/vsync_o]
  connect_bd_net -net logicvc_2_e_next_vbuff [get_bd_pins logicvc_1/e_curr_vbuff] [get_bd_pins logicvc_1/e_next_vbuff] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins TPG_VDMA/axi_resetn] [get_bd_pins axi4_0/ARESETN] [get_bd_pins axi4_0/M00_ARESETN] [get_bd_pins axi4_0/S00_ARESETN] [get_bd_pins axi4_0/S01_ARESETN] [get_bd_pins axi4_lite/ARESETN] [get_bd_pins axi4_lite/M00_ARESETN] [get_bd_pins axi4_lite/M01_ARESETN] [get_bd_pins axi4_lite/M02_ARESETN] [get_bd_pins axi4_lite/M03_ARESETN] [get_bd_pins axi4_lite/M04_ARESETN] [get_bd_pins axi4_lite/M05_ARESETN] [get_bd_pins axi4_lite/S00_ARESETN] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins logicvc_1/M_AXI_ARESETN] [get_bd_pins logicvc_1/S_AXI_ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins v_cresample_1/aresetn] [get_bd_pins v_cresample_1/s_axi_aresetn] [get_bd_pins v_tc_1/s_axi_aresetn] [get_bd_pins v_tpg_1/aresetn] [get_bd_pins v_tpg_1/s_axi_aresetn] [get_bd_pins v_ycrcb2rgb_1/aresetn] [get_bd_pins v_ycrcb2rgb_1/s_axi_aresetn] [get_bd_pins xlconcat_2/In2]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins logicvc_1/rst] [get_bd_pins proc_sys_reset_0/bus_struct_reset] [get_bd_pins v_vid_in_axi4s_1/rst]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins axi_interconnect_M_AXI_GP1/ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP1/M00_ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP1/M01_ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP1/S00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_HP1/ARESETN] [get_bd_pins axi_interconnect_S_AXI_HP1/M00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_HP1/S00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_HP1/S01_ARESETN] [get_bd_pins axi_interconnect_S_AXI_HP1/S02_ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins axis_rtr_datamover_0/m_axis_rxd_aresetn] [get_bd_pins axis_rtr_datamover_0/m_axis_rxs_aresetn] [get_bd_pins axis_rtr_datamover_0/s_axis_txc_aresetn] [get_bd_pins axis_rtr_datamover_0/s_axis_txd_aresetn] [get_bd_pins datamover_0/axi_resetn] [get_bd_pins img_process_0_if/m_axis_aresetn] [get_bd_pins img_process_0_if/s_axi_aresetn] [get_bd_pins img_process_0_if/s_axis_aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net processing_system7_1_fclk_clk0 [get_bd_pins clk_wiz_2/clk_in1] [get_bd_pins processing_system7_1/FCLK_CLK0]
  connect_bd_net -net processing_system7_1_fclk_reset0_n [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins proc_sys_reset_2/ext_reset_in] [get_bd_pins proc_sys_reset_3/ext_reset_in] [get_bd_pins processing_system7_1/FCLK_RESET0_N]
  connect_bd_net -net processing_system7_1_gpio_o [get_bd_pins processing_system7_1/GPIO_O] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net tpg_rst1_dout [get_bd_ports fmc_imageon_iic_Rst_b_pin] [get_bd_pins tpg_rst1/Dout]
  connect_bd_net -net util_flipflop_1_q [get_bd_pins tpg_util_flipflop_1/Q] [get_bd_pins v_vid_in_axi4s_1/aresetn]
  connect_bd_net -net util_reduced_logic_1_res [get_bd_pins tpg_util_flipflop_1/D] [get_bd_pins util_reduced_logic_1/Res]
  connect_bd_net -net util_vector_logic_1_res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins xlconcat_3/In2]
  connect_bd_net -net v_tc_1_active_video_out [get_bd_pins v_tc_1/active_video_out] [get_bd_pins vsrc_sel_1/de_1]
  connect_bd_net -net v_tc_1_hsync_out [get_bd_pins v_tc_1/hsync_out] [get_bd_pins vsrc_sel_1/hsync_1]
  connect_bd_net -net v_tc_1_vsync_out [get_bd_pins v_tc_1/vsync_out] [get_bd_pins vsrc_sel_1/vsync_1]
  connect_bd_net -net v_vid_in_axi4s_1_m_axis_video_tdata [get_bd_pins v_vid_in_axi4s_1/m_axis_video_tdata] [get_bd_pins xlslice_15downto8/Din] [get_bd_pins xlslice_7downto0/Din]
  connect_bd_net -net vbuff_dout [get_bd_pins logicvc_1/e_sw_vbuff] [get_bd_pins vbuff/dout]
  connect_bd_net -net video_clk_1 [get_bd_ports video_clk] [get_bd_pins vsrc_sel_1/video_clk_1]
  connect_bd_net -net vsrc_sel_1_de [get_bd_pins v_vid_in_axi4s_1/vid_active_video] [get_bd_pins vsrc_sel_1/de]
  connect_bd_net -net vsrc_sel_1_hsync [get_bd_pins v_vid_in_axi4s_1/vid_hblank] [get_bd_pins v_vid_in_axi4s_1/vid_hsync] [get_bd_pins vsrc_sel_1/hsync]
  connect_bd_net -net vsrc_sel_1_video_clk [get_bd_pins v_tc_1/clk] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_clk] [get_bd_pins vsrc_sel_1/video_clk]
  connect_bd_net -net vsrc_sel_1_vsync [get_bd_pins v_vid_in_axi4s_1/vid_vblank] [get_bd_pins v_vid_in_axi4s_1/vid_vsync] [get_bd_pins vsrc_sel_1/vsync]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins v_tpg_1/s_axis_video_tdata] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins util_reduced_logic_1/Op1] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins processing_system7_1/IRQ_F2P] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins clk_wiz_2/reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_const [get_bd_pins proc_sys_reset_0/aux_reset_in] [get_bd_pins v_cresample_1/aclken] [get_bd_pins v_cresample_1/s_axi_aclken] [get_bd_pins v_tc_1/clken] [get_bd_pins v_tc_1/det_clken] [get_bd_pins v_tc_1/gen_clken] [get_bd_pins v_tc_1/resetn] [get_bd_pins v_tc_1/s_axi_aclken] [get_bd_pins v_tpg_1/aclken] [get_bd_pins v_tpg_1/s_axi_aclken] [get_bd_pins v_vid_in_axi4s_1/aclken] [get_bd_pins v_vid_in_axi4s_1/axis_enable] [get_bd_pins v_ycrcb2rgb_1/aclken] [get_bd_pins v_ycrcb2rgb_1/s_axi_aclken] [get_bd_pins xlconstant_one/dout]
  connect_bd_net -net xlconstant_3_const [get_bd_pins tpg_util_flipflop_1/CE] [get_bd_pins tpg_util_flipflop_1/Rst] [get_bd_pins tpg_util_flipflop_1/Set] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_const [get_bd_pins logicvc_1/blank_i] [get_bd_pins logicvc_1/hsync_i] [get_bd_pins logicvc_1/pix_clk_i] [get_bd_pins logicvc_1/pix_clk_n_i] [get_bd_pins logicvc_1/vsync_i] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_const [get_bd_pins logicvc_1/d_pix_i] [get_bd_pins xlconstant_5/dout]
  connect_bd_net -net xlconstant_6_const [get_bd_pins logicvc_1/gpi] [get_bd_pins xlconstant_6/dout]
  connect_bd_net -net xlconstant_zero_const [get_bd_pins v_tc_1/fsync_in] [get_bd_pins vbuff/In0] [get_bd_pins xlconstant_zero/dout]
  connect_bd_net -net xlslice_15downto8_dout [get_bd_pins xlconcat_1/In0] [get_bd_pins xlslice_15downto8/Dout]
  connect_bd_net -net xlslice_1_dout [get_bd_pins vid_sel/Dout] [get_bd_pins vsrc_sel_1/video_sel]
  connect_bd_net -net xlslice_1_dout1 [get_bd_pins tpg_rst/Dout] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net xlslice_1_dout2 [get_bd_pins binary_to_grey_1/binary] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_dout [get_bd_pins tpg_rst/Din] [get_bd_pins tpg_rst1/Din] [get_bd_pins vid_sel/Din] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_7downto0_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlslice_7downto0/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces TPG_VDMA/Data_S2MM] [get_bd_addr_segs processing_system7_1/S_AXI_HP0/HP0_DDR_LOWOCM] SEG1
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_SG] [get_bd_addr_segs processing_system7_1/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_1_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_MM2S] [get_bd_addr_segs processing_system7_1/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_1_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_S2MM] [get_bd_addr_segs processing_system7_1/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_1_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces logicvc_1/videoData] [get_bd_addr_segs processing_system7_1/S_AXI_HP0/HP0_DDR_LOWOCM] SEG1
  create_bd_addr_seg -range 0x10000 -offset 0x40080000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs v_tpg_1/ctrl/Reg] SEG1
  create_bd_addr_seg -range 0x10000 -offset 0x40090000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs TPG_VDMA/S_AXI_LITE/Reg] SEG2
  create_bd_addr_seg -range 0x10000 -offset 0x40040000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs v_cresample_1/ctrl/Reg] SEG3
  create_bd_addr_seg -range 0x10000 -offset 0x40070000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs v_tc_1/ctrl/Reg] SEG4
  create_bd_addr_seg -range 0x10000 -offset 0x40050000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs v_ycrcb2rgb_1/ctrl/Reg] SEG6
  create_bd_addr_seg -range 0x10000 -offset 0x40030000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs logicvc_1/s_axi/Reg] SEG7
  create_bd_addr_seg -range 0x10000 -offset 0x80400000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs datamover_0/S_AXI_LITE/Reg] SEG_datamover_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x83C00000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs img_process_0_if/S_AXI/Reg] SEG_img_process_0_if_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


