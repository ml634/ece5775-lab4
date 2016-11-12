//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Sun Aug 23 22:05:29 2015
//Host        : xsjest0 running 64-bit Red Hat Enterprise Linux Client release 5.9 (Tikanga)
//Command     : generate_target zybo_axis_io.bd
//Design      : zybo_axis_io
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "zybo_axis_io,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zybo_axis_io,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "zybo_axis_io.hwdef" *) 
module zybo_axis_io
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  wire GND_1;
  wire VCC_1;
  wire [31:0]axis2io_M_AXIS_TDATA;
  wire [3:0]axis2io_M_AXIS_TKEEP;
  wire axis2io_M_AXIS_TLAST;
  wire axis2io_M_AXIS_TREADY;
  wire axis2io_M_AXIS_TVALID;
  wire clkid1;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [14:0]ps7_DDR_ADDR;
  wire [2:0]ps7_DDR_BA;
  wire ps7_DDR_CAS_N;
  wire ps7_DDR_CKE;
  wire ps7_DDR_CK_N;
  wire ps7_DDR_CK_P;
  wire ps7_DDR_CS_N;
  wire [3:0]ps7_DDR_DM;
  wire [31:0]ps7_DDR_DQ;
  wire [3:0]ps7_DDR_DQS_N;
  wire [3:0]ps7_DDR_DQS_P;
  wire ps7_DDR_ODT;
  wire ps7_DDR_RAS_N;
  wire ps7_DDR_RESET_N;
  wire ps7_DDR_WE_N;
  wire ps7_FCLK_RESET0_N;
  wire ps7_FIXED_IO_DDR_VRN;
  wire ps7_FIXED_IO_DDR_VRP;
  wire [53:0]ps7_FIXED_IO_MIO;
  wire ps7_FIXED_IO_PS_CLK;
  wire ps7_FIXED_IO_PS_PORB;
  wire ps7_FIXED_IO_PS_SRSTB;
  wire [0:0]xlconcat_dout;

  GND GND
       (.G(GND_1));
  VCC VCC
       (.P(VCC_1));
  zybo_axis_io_axis2io_0 axis2io
       (.m_axis_tdata(axis2io_M_AXIS_TDATA),
        .m_axis_tkeep(axis2io_M_AXIS_TKEEP),
        .m_axis_tlast(axis2io_M_AXIS_TLAST),
        .m_axis_tready(axis2io_M_AXIS_TREADY),
        .m_axis_tvalid(axis2io_M_AXIS_TVALID),
        .s_axis_aclk(clkid1),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axis_tkeep({VCC_1,VCC_1,VCC_1,VCC_1}),
        .s_axis_tlast(VCC_1),
        .s_axis_tvalid(GND_1));
  zybo_axis_io_io2axis_0 io2axis
       (.m_axis_tready(VCC_1),
        .s_axis_aclk(clkid1),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis2io_M_AXIS_TDATA),
        .s_axis_tkeep(axis2io_M_AXIS_TKEEP),
        .s_axis_tlast(axis2io_M_AXIS_TLAST),
        .s_axis_tready(axis2io_M_AXIS_TREADY),
        .s_axis_tvalid(axis2io_M_AXIS_TVALID));
  zybo_axis_io_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clkid1));
  zybo_axis_io_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK1(clkid1),
        .FCLK_RESET0_N(ps7_FCLK_RESET0_N),
        .IRQ_F2P(xlconcat_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  zybo_axis_io_xlconcat_0 xlconcat
       (.In0(GND_1),
        .dout(xlconcat_dout));
endmodule
