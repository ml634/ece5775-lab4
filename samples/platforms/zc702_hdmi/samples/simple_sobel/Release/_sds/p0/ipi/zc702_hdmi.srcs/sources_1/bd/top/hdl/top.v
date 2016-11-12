//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Tue Nov  8 14:21:04 2016
//Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_3QUDFX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [1:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_regslice_ARADDR;
  wire [1:0]auto_pc_to_m00_regslice_ARBURST;
  wire [3:0]auto_pc_to_m00_regslice_ARCACHE;
  wire [1:0]auto_pc_to_m00_regslice_ARID;
  wire [3:0]auto_pc_to_m00_regslice_ARLEN;
  wire [1:0]auto_pc_to_m00_regslice_ARLOCK;
  wire [2:0]auto_pc_to_m00_regslice_ARPROT;
  wire [3:0]auto_pc_to_m00_regslice_ARQOS;
  wire auto_pc_to_m00_regslice_ARREADY;
  wire [2:0]auto_pc_to_m00_regslice_ARSIZE;
  wire auto_pc_to_m00_regslice_ARVALID;
  wire [31:0]auto_pc_to_m00_regslice_AWADDR;
  wire [1:0]auto_pc_to_m00_regslice_AWBURST;
  wire [3:0]auto_pc_to_m00_regslice_AWCACHE;
  wire [1:0]auto_pc_to_m00_regslice_AWID;
  wire [3:0]auto_pc_to_m00_regslice_AWLEN;
  wire [1:0]auto_pc_to_m00_regslice_AWLOCK;
  wire [2:0]auto_pc_to_m00_regslice_AWPROT;
  wire [3:0]auto_pc_to_m00_regslice_AWQOS;
  wire auto_pc_to_m00_regslice_AWREADY;
  wire [2:0]auto_pc_to_m00_regslice_AWSIZE;
  wire auto_pc_to_m00_regslice_AWVALID;
  wire [1:0]auto_pc_to_m00_regslice_BID;
  wire auto_pc_to_m00_regslice_BREADY;
  wire [1:0]auto_pc_to_m00_regslice_BRESP;
  wire auto_pc_to_m00_regslice_BVALID;
  wire [63:0]auto_pc_to_m00_regslice_RDATA;
  wire [1:0]auto_pc_to_m00_regslice_RID;
  wire auto_pc_to_m00_regslice_RLAST;
  wire auto_pc_to_m00_regslice_RREADY;
  wire [1:0]auto_pc_to_m00_regslice_RRESP;
  wire auto_pc_to_m00_regslice_RVALID;
  wire [63:0]auto_pc_to_m00_regslice_WDATA;
  wire [1:0]auto_pc_to_m00_regslice_WID;
  wire auto_pc_to_m00_regslice_WLAST;
  wire auto_pc_to_m00_regslice_WREADY;
  wire [7:0]auto_pc_to_m00_regslice_WSTRB;
  wire auto_pc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [1:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [1:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [7:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_ARADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_ARBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_ARCACHE;
  wire [1:0]m00_data_fifo_to_auto_pc_ARID;
  wire [7:0]m00_data_fifo_to_auto_pc_ARLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_ARLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_ARPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_ARQOS;
  wire m00_data_fifo_to_auto_pc_ARREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_ARREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_ARSIZE;
  wire m00_data_fifo_to_auto_pc_ARVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_AWADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_AWBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_AWCACHE;
  wire [1:0]m00_data_fifo_to_auto_pc_AWID;
  wire [7:0]m00_data_fifo_to_auto_pc_AWLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_AWLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_AWPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_AWQOS;
  wire m00_data_fifo_to_auto_pc_AWREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_AWREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_AWSIZE;
  wire m00_data_fifo_to_auto_pc_AWVALID;
  wire [1:0]m00_data_fifo_to_auto_pc_BID;
  wire m00_data_fifo_to_auto_pc_BREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_BRESP;
  wire m00_data_fifo_to_auto_pc_BVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_RDATA;
  wire [1:0]m00_data_fifo_to_auto_pc_RID;
  wire m00_data_fifo_to_auto_pc_RLAST;
  wire m00_data_fifo_to_auto_pc_RREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_RRESP;
  wire m00_data_fifo_to_auto_pc_RVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_WDATA;
  wire m00_data_fifo_to_auto_pc_WLAST;
  wire m00_data_fifo_to_auto_pc_WREADY;
  wire [7:0]m00_data_fifo_to_auto_pc_WSTRB;
  wire m00_data_fifo_to_auto_pc_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [1:0]m00_regslice_to_m00_couplers_ARID;
  wire [3:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [1:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [1:0]m00_regslice_to_m00_couplers_AWID;
  wire [3:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [1:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [1:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [63:0]m00_regslice_to_m00_couplers_RDATA;
  wire [1:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [63:0]m00_regslice_to_m00_couplers_WDATA;
  wire [1:0]m00_regslice_to_m00_couplers_WID;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [7:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wid[1:0] = m00_regslice_to_m00_couplers_WID;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  top_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_regslice_ARID),
        .m_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_regslice_AWID),
        .m_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .m_axi_bid(auto_pc_to_m00_regslice_BID),
        .m_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .m_axi_rid(auto_pc_to_m00_regslice_RID),
        .m_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .m_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .m_axi_wid(auto_pc_to_m00_regslice_WID),
        .m_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .m_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .s_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .s_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .s_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .s_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .s_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .s_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .s_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .s_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .s_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .s_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .s_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID));
  top_m00_data_fifo_1 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .m_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .m_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .m_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .m_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .m_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .m_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .m_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .m_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .m_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .m_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .m_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
  top_m00_regslice_2 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wid(m00_regslice_to_m00_couplers_WID),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .s_axi_arid(auto_pc_to_m00_regslice_ARID),
        .s_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .s_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .s_axi_awid(auto_pc_to_m00_regslice_AWID),
        .s_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .s_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .s_axi_bid(auto_pc_to_m00_regslice_BID),
        .s_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .s_axi_rid(auto_pc_to_m00_regslice_RID),
        .s_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .s_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .s_axi_wid(auto_pc_to_m00_regslice_WID),
        .s_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .s_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_GDEZ4S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [1:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_regslice_ARADDR;
  wire [1:0]auto_pc_to_m00_regslice_ARBURST;
  wire [3:0]auto_pc_to_m00_regslice_ARCACHE;
  wire [1:0]auto_pc_to_m00_regslice_ARID;
  wire [3:0]auto_pc_to_m00_regslice_ARLEN;
  wire [1:0]auto_pc_to_m00_regslice_ARLOCK;
  wire [2:0]auto_pc_to_m00_regslice_ARPROT;
  wire [3:0]auto_pc_to_m00_regslice_ARQOS;
  wire auto_pc_to_m00_regslice_ARREADY;
  wire [2:0]auto_pc_to_m00_regslice_ARSIZE;
  wire auto_pc_to_m00_regslice_ARVALID;
  wire [31:0]auto_pc_to_m00_regslice_AWADDR;
  wire [1:0]auto_pc_to_m00_regslice_AWBURST;
  wire [3:0]auto_pc_to_m00_regslice_AWCACHE;
  wire [1:0]auto_pc_to_m00_regslice_AWID;
  wire [3:0]auto_pc_to_m00_regslice_AWLEN;
  wire [1:0]auto_pc_to_m00_regslice_AWLOCK;
  wire [2:0]auto_pc_to_m00_regslice_AWPROT;
  wire [3:0]auto_pc_to_m00_regslice_AWQOS;
  wire auto_pc_to_m00_regslice_AWREADY;
  wire [2:0]auto_pc_to_m00_regslice_AWSIZE;
  wire auto_pc_to_m00_regslice_AWVALID;
  wire [1:0]auto_pc_to_m00_regslice_BID;
  wire auto_pc_to_m00_regslice_BREADY;
  wire [1:0]auto_pc_to_m00_regslice_BRESP;
  wire auto_pc_to_m00_regslice_BVALID;
  wire [63:0]auto_pc_to_m00_regslice_RDATA;
  wire [1:0]auto_pc_to_m00_regslice_RID;
  wire auto_pc_to_m00_regslice_RLAST;
  wire auto_pc_to_m00_regslice_RREADY;
  wire [1:0]auto_pc_to_m00_regslice_RRESP;
  wire auto_pc_to_m00_regslice_RVALID;
  wire [63:0]auto_pc_to_m00_regslice_WDATA;
  wire [1:0]auto_pc_to_m00_regslice_WID;
  wire auto_pc_to_m00_regslice_WLAST;
  wire auto_pc_to_m00_regslice_WREADY;
  wire [7:0]auto_pc_to_m00_regslice_WSTRB;
  wire auto_pc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [1:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [1:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [7:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_ARADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_ARBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_ARCACHE;
  wire [1:0]m00_data_fifo_to_auto_pc_ARID;
  wire [7:0]m00_data_fifo_to_auto_pc_ARLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_ARLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_ARPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_ARQOS;
  wire m00_data_fifo_to_auto_pc_ARREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_ARREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_ARSIZE;
  wire m00_data_fifo_to_auto_pc_ARVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_AWADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_AWBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_AWCACHE;
  wire [1:0]m00_data_fifo_to_auto_pc_AWID;
  wire [7:0]m00_data_fifo_to_auto_pc_AWLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_AWLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_AWPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_AWQOS;
  wire m00_data_fifo_to_auto_pc_AWREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_AWREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_AWSIZE;
  wire m00_data_fifo_to_auto_pc_AWVALID;
  wire [1:0]m00_data_fifo_to_auto_pc_BID;
  wire m00_data_fifo_to_auto_pc_BREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_BRESP;
  wire m00_data_fifo_to_auto_pc_BVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_RDATA;
  wire [1:0]m00_data_fifo_to_auto_pc_RID;
  wire m00_data_fifo_to_auto_pc_RLAST;
  wire m00_data_fifo_to_auto_pc_RREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_RRESP;
  wire m00_data_fifo_to_auto_pc_RVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_WDATA;
  wire m00_data_fifo_to_auto_pc_WLAST;
  wire m00_data_fifo_to_auto_pc_WREADY;
  wire [7:0]m00_data_fifo_to_auto_pc_WSTRB;
  wire m00_data_fifo_to_auto_pc_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [1:0]m00_regslice_to_m00_couplers_ARID;
  wire [3:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [1:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [1:0]m00_regslice_to_m00_couplers_AWID;
  wire [3:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [1:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [1:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [63:0]m00_regslice_to_m00_couplers_RDATA;
  wire [1:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [63:0]m00_regslice_to_m00_couplers_WDATA;
  wire [1:0]m00_regslice_to_m00_couplers_WID;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [7:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wid[1:0] = m00_regslice_to_m00_couplers_WID;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  top_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_regslice_ARID),
        .m_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_regslice_AWID),
        .m_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .m_axi_bid(auto_pc_to_m00_regslice_BID),
        .m_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .m_axi_rid(auto_pc_to_m00_regslice_RID),
        .m_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .m_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .m_axi_wid(auto_pc_to_m00_regslice_WID),
        .m_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .m_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .s_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .s_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .s_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .s_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .s_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .s_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .s_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .s_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .s_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .s_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .s_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID));
  top_m00_data_fifo_0 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .m_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .m_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .m_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .m_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .m_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .m_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .m_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .m_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .m_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .m_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .m_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
  top_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wid(m00_regslice_to_m00_couplers_WID),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .s_axi_arid(auto_pc_to_m00_regslice_ARID),
        .s_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .s_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .s_axi_awid(auto_pc_to_m00_regslice_AWID),
        .s_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .s_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .s_axi_bid(auto_pc_to_m00_regslice_BID),
        .s_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .s_axi_rid(auto_pc_to_m00_regslice_RID),
        .s_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .s_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .s_axi_wid(auto_pc_to_m00_regslice_WID),
        .s_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .s_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_MIMTZ0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [12:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [12:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [12:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire [12:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [12:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [12:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [12:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[12:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[12:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[12:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  top_m00_regslice_1 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_PVTEPF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [8:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_131CERD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [9:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [9:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [9:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [9:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire [9:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [9:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [9:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [9:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[9:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[9:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[9:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[9:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  top_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_ZRA7G6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [8:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_GY5TRS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [8:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1QAL859
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [8:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_17TLI5H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [8:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [8:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_HVACO0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_14J47DY
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [63:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [7:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_regslice_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWCACHE;
  wire [7:0]s00_regslice_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_regslice_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_regslice_to_s00_data_fifo_AWPROT;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWQOS;
  wire s00_regslice_to_s00_data_fifo_AWREADY;
  wire [3:0]s00_regslice_to_s00_data_fifo_AWREGION;
  wire [2:0]s00_regslice_to_s00_data_fifo_AWSIZE;
  wire s00_regslice_to_s00_data_fifo_AWVALID;
  wire s00_regslice_to_s00_data_fifo_BREADY;
  wire [1:0]s00_regslice_to_s00_data_fifo_BRESP;
  wire s00_regslice_to_s00_data_fifo_BVALID;
  wire [63:0]s00_regslice_to_s00_data_fifo_WDATA;
  wire s00_regslice_to_s00_data_fifo_WLAST;
  wire s00_regslice_to_s00_data_fifo_WREADY;
  wire [7:0]s00_regslice_to_s00_data_fifo_WSTRB;
  wire s00_regslice_to_s00_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  GND GND
       (.G(GND_1));
  top_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_awaddr(s00_regslice_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_regslice_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_regslice_to_s00_data_fifo_AWCACHE),
        .s_axi_awlen(s00_regslice_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_regslice_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_regslice_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(s00_regslice_to_s00_data_fifo_AWQOS),
        .s_axi_awready(s00_regslice_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(s00_regslice_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(s00_regslice_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_regslice_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_regslice_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_regslice_to_s00_data_fifo_BVALID),
        .s_axi_wdata(s00_regslice_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_regslice_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_regslice_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_regslice_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_regslice_to_s00_data_fifo_WVALID));
  top_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s00_regslice_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_data_fifo_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_data_fifo_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(s00_regslice_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(s00_regslice_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_data_fifo_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_data_fifo_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_data_fifo_BVALID),
        .m_axi_wdata(s00_regslice_to_s00_data_fifo_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_data_fifo_WLAST),
        .m_axi_wready(s00_regslice_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_data_fifo_WVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_19MGGQF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s00_couplers_AWQOS;
  wire auto_us_df_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s00_couplers_AWSIZE;
  wire auto_us_df_to_s00_couplers_AWVALID;
  wire auto_us_df_to_s00_couplers_BREADY;
  wire [1:0]auto_us_df_to_s00_couplers_BRESP;
  wire auto_us_df_to_s00_couplers_BVALID;
  wire [63:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [63:0]auto_us_df_to_s00_couplers_WDATA;
  wire auto_us_df_to_s00_couplers_WLAST;
  wire auto_us_df_to_s00_couplers_WREADY;
  wire [7:0]auto_us_df_to_s00_couplers_WSTRB;
  wire auto_us_df_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_df_ARCACHE;
  wire [7:0]s00_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_df_ARQOS;
  wire s00_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_df_ARSIZE;
  wire s00_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_df_AWCACHE;
  wire [7:0]s00_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_df_AWQOS;
  wire s00_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_df_AWSIZE;
  wire s00_regslice_to_auto_us_df_AWVALID;
  wire s00_regslice_to_auto_us_df_BREADY;
  wire [1:0]s00_regslice_to_auto_us_df_BRESP;
  wire s00_regslice_to_auto_us_df_BVALID;
  wire [31:0]s00_regslice_to_auto_us_df_RDATA;
  wire s00_regslice_to_auto_us_df_RLAST;
  wire s00_regslice_to_auto_us_df_RREADY;
  wire [1:0]s00_regslice_to_auto_us_df_RRESP;
  wire s00_regslice_to_auto_us_df_RVALID;
  wire [31:0]s00_regslice_to_auto_us_df_WDATA;
  wire s00_regslice_to_auto_us_df_WLAST;
  wire s00_regslice_to_auto_us_df_WREADY;
  wire [3:0]s00_regslice_to_auto_us_df_WSTRB;
  wire s00_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  GND GND
       (.G(GND_1));
  top_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_df_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_df_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_df_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_df_WVALID));
  top_s00_regslice_2 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_df_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_df_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_df_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_df_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1VSPVUX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  top_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1WVBE9Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_data_fifo_ARADDR;
  wire [2:0]auto_pc_to_s00_data_fifo_ARPROT;
  wire auto_pc_to_s00_data_fifo_ARREADY;
  wire auto_pc_to_s00_data_fifo_ARVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_AWADDR;
  wire [2:0]auto_pc_to_s00_data_fifo_AWPROT;
  wire auto_pc_to_s00_data_fifo_AWREADY;
  wire auto_pc_to_s00_data_fifo_AWVALID;
  wire auto_pc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_BRESP;
  wire auto_pc_to_s00_data_fifo_BVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_RDATA;
  wire auto_pc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_RRESP;
  wire auto_pc_to_s00_data_fifo_RVALID;
  wire [31:0]auto_pc_to_s00_data_fifo_WDATA;
  wire auto_pc_to_s00_data_fifo_WREADY;
  wire [3:0]auto_pc_to_s00_data_fifo_WSTRB;
  wire auto_pc_to_s00_data_fifo_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_ARID;
  wire [3:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_AWID;
  wire [3:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [11:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [11:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire [11:0]s00_couplers_to_s00_regslice_WID;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [11:0]s00_regslice_to_auto_pc_ARID;
  wire [3:0]s00_regslice_to_auto_pc_ARLEN;
  wire [1:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [11:0]s00_regslice_to_auto_pc_AWID;
  wire [3:0]s00_regslice_to_auto_pc_AWLEN;
  wire [1:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [11:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [11:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire [11:0]s00_regslice_to_auto_pc_WID;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  top_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .m_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .m_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .m_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .m_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .m_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wid(s00_regslice_to_auto_pc_WID),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
  top_s00_data_fifo_1 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .s_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .s_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .s_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .s_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .s_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID));
  top_s00_regslice_1 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wid(s00_regslice_to_auto_pc_WID),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wid(s00_couplers_to_s00_regslice_WID),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s01_couplers_imp_M2B55V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_ARID;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [0:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_AWID;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [0:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire [0:0]s01_couplers_to_s01_regslice_BID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [63:0]s01_couplers_to_s01_regslice_RDATA;
  wire [0:0]s01_couplers_to_s01_regslice_RID;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [63:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [7:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARID;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWID;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire [0:0]s01_data_fifo_to_s01_couplers_BID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire [0:0]s01_data_fifo_to_s01_couplers_RID;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [7:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;
  wire [31:0]s01_regslice_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_regslice_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARCACHE;
  wire [0:0]s01_regslice_to_s01_data_fifo_ARID;
  wire [7:0]s01_regslice_to_s01_data_fifo_ARLEN;
  wire [0:0]s01_regslice_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARPROT;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARQOS;
  wire s01_regslice_to_s01_data_fifo_ARREADY;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARREGION;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARSIZE;
  wire s01_regslice_to_s01_data_fifo_ARVALID;
  wire [31:0]s01_regslice_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_regslice_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_regslice_to_s01_data_fifo_AWCACHE;
  wire [0:0]s01_regslice_to_s01_data_fifo_AWID;
  wire [7:0]s01_regslice_to_s01_data_fifo_AWLEN;
  wire [0:0]s01_regslice_to_s01_data_fifo_AWLOCK;
  wire [2:0]s01_regslice_to_s01_data_fifo_AWPROT;
  wire [3:0]s01_regslice_to_s01_data_fifo_AWQOS;
  wire s01_regslice_to_s01_data_fifo_AWREADY;
  wire [3:0]s01_regslice_to_s01_data_fifo_AWREGION;
  wire [2:0]s01_regslice_to_s01_data_fifo_AWSIZE;
  wire s01_regslice_to_s01_data_fifo_AWVALID;
  wire [0:0]s01_regslice_to_s01_data_fifo_BID;
  wire s01_regslice_to_s01_data_fifo_BREADY;
  wire [1:0]s01_regslice_to_s01_data_fifo_BRESP;
  wire s01_regslice_to_s01_data_fifo_BVALID;
  wire [63:0]s01_regslice_to_s01_data_fifo_RDATA;
  wire [0:0]s01_regslice_to_s01_data_fifo_RID;
  wire s01_regslice_to_s01_data_fifo_RLAST;
  wire s01_regslice_to_s01_data_fifo_RREADY;
  wire [1:0]s01_regslice_to_s01_data_fifo_RRESP;
  wire s01_regslice_to_s01_data_fifo_RVALID;
  wire [63:0]s01_regslice_to_s01_data_fifo_WDATA;
  wire s01_regslice_to_s01_data_fifo_WLAST;
  wire s01_regslice_to_s01_data_fifo_WREADY;
  wire [7:0]s01_regslice_to_s01_data_fifo_WSTRB;
  wire s01_regslice_to_s01_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[0] = s01_data_fifo_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[0] = s01_data_fifo_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_s01_regslice_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_s01_regslice_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BID = M_AXI_bid[0];
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_data_fifo_to_s01_couplers_RID = M_AXI_rid[0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  GND GND
       (.G(GND_1));
  top_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arid(s01_data_fifo_to_s01_couplers_ARID),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awid(s01_data_fifo_to_s01_couplers_AWID),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bid(s01_data_fifo_to_s01_couplers_BID),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rid(s01_data_fifo_to_s01_couplers_RID),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .s_axi_arid(s01_regslice_to_s01_data_fifo_ARID),
        .s_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .s_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .s_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .s_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .s_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .s_axi_awaddr(s01_regslice_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(s01_regslice_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(s01_regslice_to_s01_data_fifo_AWCACHE),
        .s_axi_awid(s01_regslice_to_s01_data_fifo_AWID),
        .s_axi_awlen(s01_regslice_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(s01_regslice_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(s01_regslice_to_s01_data_fifo_AWPROT),
        .s_axi_awqos(s01_regslice_to_s01_data_fifo_AWQOS),
        .s_axi_awready(s01_regslice_to_s01_data_fifo_AWREADY),
        .s_axi_awregion(s01_regslice_to_s01_data_fifo_AWREGION),
        .s_axi_awsize(s01_regslice_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_s01_data_fifo_AWVALID),
        .s_axi_bid(s01_regslice_to_s01_data_fifo_BID),
        .s_axi_bready(s01_regslice_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_regslice_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_regslice_to_s01_data_fifo_BVALID),
        .s_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .s_axi_rid(s01_regslice_to_s01_data_fifo_RID),
        .s_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID),
        .s_axi_wdata(s01_regslice_to_s01_data_fifo_WDATA),
        .s_axi_wlast(s01_regslice_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_regslice_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(s01_regslice_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(s01_regslice_to_s01_data_fifo_WVALID));
  top_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .m_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .m_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .m_axi_arid(s01_regslice_to_s01_data_fifo_ARID),
        .m_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .m_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .m_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .m_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .m_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .m_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .m_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .m_axi_awaddr(s01_regslice_to_s01_data_fifo_AWADDR),
        .m_axi_awburst(s01_regslice_to_s01_data_fifo_AWBURST),
        .m_axi_awcache(s01_regslice_to_s01_data_fifo_AWCACHE),
        .m_axi_awid(s01_regslice_to_s01_data_fifo_AWID),
        .m_axi_awlen(s01_regslice_to_s01_data_fifo_AWLEN),
        .m_axi_awlock(s01_regslice_to_s01_data_fifo_AWLOCK),
        .m_axi_awprot(s01_regslice_to_s01_data_fifo_AWPROT),
        .m_axi_awqos(s01_regslice_to_s01_data_fifo_AWQOS),
        .m_axi_awready(s01_regslice_to_s01_data_fifo_AWREADY),
        .m_axi_awregion(s01_regslice_to_s01_data_fifo_AWREGION),
        .m_axi_awsize(s01_regslice_to_s01_data_fifo_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_s01_data_fifo_AWVALID),
        .m_axi_bid(s01_regslice_to_s01_data_fifo_BID),
        .m_axi_bready(s01_regslice_to_s01_data_fifo_BREADY),
        .m_axi_bresp(s01_regslice_to_s01_data_fifo_BRESP),
        .m_axi_bvalid(s01_regslice_to_s01_data_fifo_BVALID),
        .m_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .m_axi_rid(s01_regslice_to_s01_data_fifo_RID),
        .m_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .m_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .m_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .m_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID),
        .m_axi_wdata(s01_regslice_to_s01_data_fifo_WDATA),
        .m_axi_wlast(s01_regslice_to_s01_data_fifo_WLAST),
        .m_axi_wready(s01_regslice_to_s01_data_fifo_WREADY),
        .m_axi_wstrb(s01_regslice_to_s01_data_fifo_WSTRB),
        .m_axi_wvalid(s01_regslice_to_s01_data_fifo_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_regslice_ARID),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_regslice_AWID),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_regslice_BID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rid(s01_couplers_to_s01_regslice_RID),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s01_couplers_imp_XUC94I
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [63:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [31:0]s01_regslice_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_regslice_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARCACHE;
  wire [7:0]s01_regslice_to_s01_data_fifo_ARLEN;
  wire [0:0]s01_regslice_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARPROT;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARQOS;
  wire s01_regslice_to_s01_data_fifo_ARREADY;
  wire [3:0]s01_regslice_to_s01_data_fifo_ARREGION;
  wire [2:0]s01_regslice_to_s01_data_fifo_ARSIZE;
  wire s01_regslice_to_s01_data_fifo_ARVALID;
  wire [63:0]s01_regslice_to_s01_data_fifo_RDATA;
  wire s01_regslice_to_s01_data_fifo_RLAST;
  wire s01_regslice_to_s01_data_fifo_RREADY;
  wire [1:0]s01_regslice_to_s01_data_fifo_RRESP;
  wire s01_regslice_to_s01_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  GND GND
       (.G(GND_1));
  top_s01_data_fifo_1 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .s_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .s_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .s_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .s_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .s_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .s_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .s_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .s_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID));
  top_s01_regslice_1 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_s01_data_fifo_ARADDR),
        .m_axi_arburst(s01_regslice_to_s01_data_fifo_ARBURST),
        .m_axi_arcache(s01_regslice_to_s01_data_fifo_ARCACHE),
        .m_axi_arlen(s01_regslice_to_s01_data_fifo_ARLEN),
        .m_axi_arlock(s01_regslice_to_s01_data_fifo_ARLOCK),
        .m_axi_arprot(s01_regslice_to_s01_data_fifo_ARPROT),
        .m_axi_arqos(s01_regslice_to_s01_data_fifo_ARQOS),
        .m_axi_arready(s01_regslice_to_s01_data_fifo_ARREADY),
        .m_axi_arregion(s01_regslice_to_s01_data_fifo_ARREGION),
        .m_axi_arsize(s01_regslice_to_s01_data_fifo_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_s01_data_fifo_ARVALID),
        .m_axi_rdata(s01_regslice_to_s01_data_fifo_RDATA),
        .m_axi_rlast(s01_regslice_to_s01_data_fifo_RLAST),
        .m_axi_rready(s01_regslice_to_s01_data_fifo_RREADY),
        .m_axi_rresp(s01_regslice_to_s01_data_fifo_RRESP),
        .m_axi_rvalid(s01_regslice_to_s01_data_fifo_RVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID));
endmodule

module s02_couplers_imp_1IFRU2K
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s02_couplers_to_s02_regslice_AWADDR;
  wire [1:0]s02_couplers_to_s02_regslice_AWBURST;
  wire [3:0]s02_couplers_to_s02_regslice_AWCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_AWLEN;
  wire [2:0]s02_couplers_to_s02_regslice_AWPROT;
  wire s02_couplers_to_s02_regslice_AWREADY;
  wire [2:0]s02_couplers_to_s02_regslice_AWSIZE;
  wire s02_couplers_to_s02_regslice_AWVALID;
  wire s02_couplers_to_s02_regslice_BREADY;
  wire [1:0]s02_couplers_to_s02_regslice_BRESP;
  wire s02_couplers_to_s02_regslice_BVALID;
  wire [63:0]s02_couplers_to_s02_regslice_WDATA;
  wire s02_couplers_to_s02_regslice_WLAST;
  wire s02_couplers_to_s02_regslice_WREADY;
  wire [7:0]s02_couplers_to_s02_regslice_WSTRB;
  wire s02_couplers_to_s02_regslice_WVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_AWADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_AWBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_AWLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_AWLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWQOS;
  wire s02_data_fifo_to_s02_couplers_AWREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWSIZE;
  wire s02_data_fifo_to_s02_couplers_AWVALID;
  wire s02_data_fifo_to_s02_couplers_BREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_BRESP;
  wire s02_data_fifo_to_s02_couplers_BVALID;
  wire [63:0]s02_data_fifo_to_s02_couplers_WDATA;
  wire s02_data_fifo_to_s02_couplers_WLAST;
  wire s02_data_fifo_to_s02_couplers_WREADY;
  wire [7:0]s02_data_fifo_to_s02_couplers_WSTRB;
  wire s02_data_fifo_to_s02_couplers_WVALID;
  wire [31:0]s02_regslice_to_s02_data_fifo_AWADDR;
  wire [1:0]s02_regslice_to_s02_data_fifo_AWBURST;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWCACHE;
  wire [7:0]s02_regslice_to_s02_data_fifo_AWLEN;
  wire [0:0]s02_regslice_to_s02_data_fifo_AWLOCK;
  wire [2:0]s02_regslice_to_s02_data_fifo_AWPROT;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWQOS;
  wire s02_regslice_to_s02_data_fifo_AWREADY;
  wire [3:0]s02_regslice_to_s02_data_fifo_AWREGION;
  wire [2:0]s02_regslice_to_s02_data_fifo_AWSIZE;
  wire s02_regslice_to_s02_data_fifo_AWVALID;
  wire s02_regslice_to_s02_data_fifo_BREADY;
  wire [1:0]s02_regslice_to_s02_data_fifo_BRESP;
  wire s02_regslice_to_s02_data_fifo_BVALID;
  wire [63:0]s02_regslice_to_s02_data_fifo_WDATA;
  wire s02_regslice_to_s02_data_fifo_WLAST;
  wire s02_regslice_to_s02_data_fifo_WREADY;
  wire [7:0]s02_regslice_to_s02_data_fifo_WSTRB;
  wire s02_regslice_to_s02_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_awaddr[31:0] = s02_data_fifo_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_data_fifo_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_data_fifo_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_data_fifo_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_data_fifo_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_data_fifo_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_data_fifo_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_data_fifo_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_data_fifo_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_data_fifo_to_s02_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s02_data_fifo_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_data_fifo_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s02_data_fifo_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_data_fifo_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s02_couplers_to_s02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_regslice_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_regslice_BVALID;
  assign S_AXI_wready = s02_couplers_to_s02_regslice_WREADY;
  assign s02_couplers_to_s02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_regslice_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_regslice_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_regslice_WDATA = S_AXI_wdata[63:0];
  assign s02_couplers_to_s02_regslice_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_regslice_WSTRB = S_AXI_wstrb[7:0];
  assign s02_couplers_to_s02_regslice_WVALID = S_AXI_wvalid;
  assign s02_data_fifo_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_data_fifo_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_data_fifo_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_data_fifo_to_s02_couplers_WREADY = M_AXI_wready;
  GND GND
       (.G(GND_1));
  top_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s02_data_fifo_to_s02_couplers_AWADDR),
        .m_axi_awburst(s02_data_fifo_to_s02_couplers_AWBURST),
        .m_axi_awcache(s02_data_fifo_to_s02_couplers_AWCACHE),
        .m_axi_awlen(s02_data_fifo_to_s02_couplers_AWLEN),
        .m_axi_awlock(s02_data_fifo_to_s02_couplers_AWLOCK),
        .m_axi_awprot(s02_data_fifo_to_s02_couplers_AWPROT),
        .m_axi_awqos(s02_data_fifo_to_s02_couplers_AWQOS),
        .m_axi_awready(s02_data_fifo_to_s02_couplers_AWREADY),
        .m_axi_awsize(s02_data_fifo_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(s02_data_fifo_to_s02_couplers_AWVALID),
        .m_axi_bready(s02_data_fifo_to_s02_couplers_BREADY),
        .m_axi_bresp(s02_data_fifo_to_s02_couplers_BRESP),
        .m_axi_bvalid(s02_data_fifo_to_s02_couplers_BVALID),
        .m_axi_wdata(s02_data_fifo_to_s02_couplers_WDATA),
        .m_axi_wlast(s02_data_fifo_to_s02_couplers_WLAST),
        .m_axi_wready(s02_data_fifo_to_s02_couplers_WREADY),
        .m_axi_wstrb(s02_data_fifo_to_s02_couplers_WSTRB),
        .m_axi_wvalid(s02_data_fifo_to_s02_couplers_WVALID),
        .s_axi_awaddr(s02_regslice_to_s02_data_fifo_AWADDR),
        .s_axi_awburst(s02_regslice_to_s02_data_fifo_AWBURST),
        .s_axi_awcache(s02_regslice_to_s02_data_fifo_AWCACHE),
        .s_axi_awlen(s02_regslice_to_s02_data_fifo_AWLEN),
        .s_axi_awlock(s02_regslice_to_s02_data_fifo_AWLOCK),
        .s_axi_awprot(s02_regslice_to_s02_data_fifo_AWPROT),
        .s_axi_awqos(s02_regslice_to_s02_data_fifo_AWQOS),
        .s_axi_awready(s02_regslice_to_s02_data_fifo_AWREADY),
        .s_axi_awregion(s02_regslice_to_s02_data_fifo_AWREGION),
        .s_axi_awsize(s02_regslice_to_s02_data_fifo_AWSIZE),
        .s_axi_awvalid(s02_regslice_to_s02_data_fifo_AWVALID),
        .s_axi_bready(s02_regslice_to_s02_data_fifo_BREADY),
        .s_axi_bresp(s02_regslice_to_s02_data_fifo_BRESP),
        .s_axi_bvalid(s02_regslice_to_s02_data_fifo_BVALID),
        .s_axi_wdata(s02_regslice_to_s02_data_fifo_WDATA),
        .s_axi_wlast(s02_regslice_to_s02_data_fifo_WLAST),
        .s_axi_wready(s02_regslice_to_s02_data_fifo_WREADY),
        .s_axi_wstrb(s02_regslice_to_s02_data_fifo_WSTRB),
        .s_axi_wvalid(s02_regslice_to_s02_data_fifo_WVALID));
  top_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s02_regslice_to_s02_data_fifo_AWADDR),
        .m_axi_awburst(s02_regslice_to_s02_data_fifo_AWBURST),
        .m_axi_awcache(s02_regslice_to_s02_data_fifo_AWCACHE),
        .m_axi_awlen(s02_regslice_to_s02_data_fifo_AWLEN),
        .m_axi_awlock(s02_regslice_to_s02_data_fifo_AWLOCK),
        .m_axi_awprot(s02_regslice_to_s02_data_fifo_AWPROT),
        .m_axi_awqos(s02_regslice_to_s02_data_fifo_AWQOS),
        .m_axi_awready(s02_regslice_to_s02_data_fifo_AWREADY),
        .m_axi_awregion(s02_regslice_to_s02_data_fifo_AWREGION),
        .m_axi_awsize(s02_regslice_to_s02_data_fifo_AWSIZE),
        .m_axi_awvalid(s02_regslice_to_s02_data_fifo_AWVALID),
        .m_axi_bready(s02_regslice_to_s02_data_fifo_BREADY),
        .m_axi_bresp(s02_regslice_to_s02_data_fifo_BRESP),
        .m_axi_bvalid(s02_regslice_to_s02_data_fifo_BVALID),
        .m_axi_wdata(s02_regslice_to_s02_data_fifo_WDATA),
        .m_axi_wlast(s02_regslice_to_s02_data_fifo_WLAST),
        .m_axi_wready(s02_regslice_to_s02_data_fifo_WREADY),
        .m_axi_wstrb(s02_regslice_to_s02_data_fifo_WSTRB),
        .m_axi_wvalid(s02_regslice_to_s02_data_fifo_WVALID),
        .s_axi_awaddr(s02_couplers_to_s02_regslice_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_regslice_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_regslice_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_regslice_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s02_couplers_to_s02_regslice_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s02_couplers_to_s02_regslice_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s02_couplers_to_s02_regslice_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_regslice_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_regslice_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_regslice_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_regslice_BVALID),
        .s_axi_wdata(s02_couplers_to_s02_regslice_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_regslice_WLAST),
        .s_axi_wready(s02_couplers_to_s02_regslice_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_regslice_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=89,numReposBlks=68,numNonXlnxBlks=1,numHierBlks=21,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
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
    FIXED_IO_ps_srstb,
    HDMI_O_int_pin,
    IIC_1_scl_i,
    IIC_1_scl_o,
    IIC_1_scl_t,
    IIC_1_sda_i,
    IIC_1_sda_o,
    IIC_1_sda_t,
    blank_o,
    d_pix_o,
    fmc_imageon_iic_Rst_b_pin,
    hdmi_clk,
    hsync_o,
    io_hdmii_spdif,
    io_hdmii_video,
    pix_clk_o,
    video_clk,
    vsync_o);
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
  input [0:0]HDMI_O_int_pin;
  input IIC_1_scl_i;
  output IIC_1_scl_o;
  output IIC_1_scl_t;
  input IIC_1_sda_i;
  output IIC_1_sda_o;
  output IIC_1_sda_t;
  output blank_o;
  output [15:0]d_pix_o;
  output [0:0]fmc_imageon_iic_Rst_b_pin;
  input hdmi_clk;
  output hsync_o;
  input io_hdmii_spdif;
  input [15:0]io_hdmii_video;
  output pix_clk_o;
  input video_clk;
  output vsync_o;

  wire GND_1;
  wire [0:0]Op1;
  wire VCC_1;
  wire [31:0]axi4_lite_m05_axi_ARADDR;
  wire axi4_lite_m05_axi_ARREADY;
  wire [0:0]axi4_lite_m05_axi_ARVALID;
  wire [31:0]axi4_lite_m05_axi_AWADDR;
  wire axi4_lite_m05_axi_AWREADY;
  wire [0:0]axi4_lite_m05_axi_AWVALID;
  wire [0:0]axi4_lite_m05_axi_BREADY;
  wire [1:0]axi4_lite_m05_axi_BRESP;
  wire axi4_lite_m05_axi_BVALID;
  wire [31:0]axi4_lite_m05_axi_RDATA;
  wire [0:0]axi4_lite_m05_axi_RREADY;
  wire [1:0]axi4_lite_m05_axi_RRESP;
  wire axi4_lite_m05_axi_RVALID;
  wire [31:0]axi4_lite_m05_axi_WDATA;
  wire axi4_lite_m05_axi_WREADY;
  wire [3:0]axi4_lite_m05_axi_WSTRB;
  wire [0:0]axi4_lite_m05_axi_WVALID;
  wire [31:0]axi_interconnect_1_m00_axi_ARADDR;
  wire [1:0]axi_interconnect_1_m00_axi_ARBURST;
  wire [3:0]axi_interconnect_1_m00_axi_ARCACHE;
  wire [1:0]axi_interconnect_1_m00_axi_ARID;
  wire [3:0]axi_interconnect_1_m00_axi_ARLEN;
  wire [1:0]axi_interconnect_1_m00_axi_ARLOCK;
  wire [2:0]axi_interconnect_1_m00_axi_ARPROT;
  wire [3:0]axi_interconnect_1_m00_axi_ARQOS;
  wire axi_interconnect_1_m00_axi_ARREADY;
  wire [2:0]axi_interconnect_1_m00_axi_ARSIZE;
  wire axi_interconnect_1_m00_axi_ARVALID;
  wire [31:0]axi_interconnect_1_m00_axi_AWADDR;
  wire [1:0]axi_interconnect_1_m00_axi_AWBURST;
  wire [3:0]axi_interconnect_1_m00_axi_AWCACHE;
  wire [1:0]axi_interconnect_1_m00_axi_AWID;
  wire [3:0]axi_interconnect_1_m00_axi_AWLEN;
  wire [1:0]axi_interconnect_1_m00_axi_AWLOCK;
  wire [2:0]axi_interconnect_1_m00_axi_AWPROT;
  wire [3:0]axi_interconnect_1_m00_axi_AWQOS;
  wire axi_interconnect_1_m00_axi_AWREADY;
  wire [2:0]axi_interconnect_1_m00_axi_AWSIZE;
  wire axi_interconnect_1_m00_axi_AWVALID;
  wire [5:0]axi_interconnect_1_m00_axi_BID;
  wire axi_interconnect_1_m00_axi_BREADY;
  wire [1:0]axi_interconnect_1_m00_axi_BRESP;
  wire axi_interconnect_1_m00_axi_BVALID;
  wire [63:0]axi_interconnect_1_m00_axi_RDATA;
  wire [5:0]axi_interconnect_1_m00_axi_RID;
  wire axi_interconnect_1_m00_axi_RLAST;
  wire axi_interconnect_1_m00_axi_RREADY;
  wire [1:0]axi_interconnect_1_m00_axi_RRESP;
  wire axi_interconnect_1_m00_axi_RVALID;
  wire [63:0]axi_interconnect_1_m00_axi_WDATA;
  wire [1:0]axi_interconnect_1_m00_axi_WID;
  wire axi_interconnect_1_m00_axi_WLAST;
  wire axi_interconnect_1_m00_axi_WREADY;
  wire [7:0]axi_interconnect_1_m00_axi_WSTRB;
  wire axi_interconnect_1_m00_axi_WVALID;
  wire [8:0]axi_interconnect_2_m00_axi_ARADDR;
  wire axi_interconnect_2_m00_axi_ARREADY;
  wire [0:0]axi_interconnect_2_m00_axi_ARVALID;
  wire [8:0]axi_interconnect_2_m00_axi_AWADDR;
  wire axi_interconnect_2_m00_axi_AWREADY;
  wire [0:0]axi_interconnect_2_m00_axi_AWVALID;
  wire [0:0]axi_interconnect_2_m00_axi_BREADY;
  wire [1:0]axi_interconnect_2_m00_axi_BRESP;
  wire axi_interconnect_2_m00_axi_BVALID;
  wire [31:0]axi_interconnect_2_m00_axi_RDATA;
  wire [0:0]axi_interconnect_2_m00_axi_RREADY;
  wire [1:0]axi_interconnect_2_m00_axi_RRESP;
  wire axi_interconnect_2_m00_axi_RVALID;
  wire [31:0]axi_interconnect_2_m00_axi_WDATA;
  wire axi_interconnect_2_m00_axi_WREADY;
  wire [3:0]axi_interconnect_2_m00_axi_WSTRB;
  wire [0:0]axi_interconnect_2_m00_axi_WVALID;
  wire [8:0]axi_interconnect_2_m01_axi_ARADDR;
  wire axi_interconnect_2_m01_axi_ARREADY;
  wire [0:0]axi_interconnect_2_m01_axi_ARVALID;
  wire [8:0]axi_interconnect_2_m01_axi_AWADDR;
  wire axi_interconnect_2_m01_axi_AWREADY;
  wire [0:0]axi_interconnect_2_m01_axi_AWVALID;
  wire [0:0]axi_interconnect_2_m01_axi_BREADY;
  wire [1:0]axi_interconnect_2_m01_axi_BRESP;
  wire axi_interconnect_2_m01_axi_BVALID;
  wire [31:0]axi_interconnect_2_m01_axi_RDATA;
  wire [0:0]axi_interconnect_2_m01_axi_RREADY;
  wire [1:0]axi_interconnect_2_m01_axi_RRESP;
  wire axi_interconnect_2_m01_axi_RVALID;
  wire [31:0]axi_interconnect_2_m01_axi_WDATA;
  wire axi_interconnect_2_m01_axi_WREADY;
  wire [0:0]axi_interconnect_2_m01_axi_WVALID;
  wire [8:0]axi_interconnect_2_m02_axi_ARADDR;
  wire axi_interconnect_2_m02_axi_ARREADY;
  wire [0:0]axi_interconnect_2_m02_axi_ARVALID;
  wire [8:0]axi_interconnect_2_m02_axi_AWADDR;
  wire axi_interconnect_2_m02_axi_AWREADY;
  wire [0:0]axi_interconnect_2_m02_axi_AWVALID;
  wire [0:0]axi_interconnect_2_m02_axi_BREADY;
  wire [1:0]axi_interconnect_2_m02_axi_BRESP;
  wire axi_interconnect_2_m02_axi_BVALID;
  wire [31:0]axi_interconnect_2_m02_axi_RDATA;
  wire [0:0]axi_interconnect_2_m02_axi_RREADY;
  wire [1:0]axi_interconnect_2_m02_axi_RRESP;
  wire axi_interconnect_2_m02_axi_RVALID;
  wire [31:0]axi_interconnect_2_m02_axi_WDATA;
  wire axi_interconnect_2_m02_axi_WREADY;
  wire [3:0]axi_interconnect_2_m02_axi_WSTRB;
  wire [0:0]axi_interconnect_2_m02_axi_WVALID;
  wire [8:0]axi_interconnect_2_m03_axi_ARADDR;
  wire axi_interconnect_2_m03_axi_ARREADY;
  wire [0:0]axi_interconnect_2_m03_axi_ARVALID;
  wire [8:0]axi_interconnect_2_m03_axi_AWADDR;
  wire axi_interconnect_2_m03_axi_AWREADY;
  wire [0:0]axi_interconnect_2_m03_axi_AWVALID;
  wire [0:0]axi_interconnect_2_m03_axi_BREADY;
  wire [1:0]axi_interconnect_2_m03_axi_BRESP;
  wire axi_interconnect_2_m03_axi_BVALID;
  wire [31:0]axi_interconnect_2_m03_axi_RDATA;
  wire [0:0]axi_interconnect_2_m03_axi_RREADY;
  wire [1:0]axi_interconnect_2_m03_axi_RRESP;
  wire axi_interconnect_2_m03_axi_RVALID;
  wire [31:0]axi_interconnect_2_m03_axi_WDATA;
  wire axi_interconnect_2_m03_axi_WREADY;
  wire [3:0]axi_interconnect_2_m03_axi_WSTRB;
  wire [0:0]axi_interconnect_2_m03_axi_WVALID;
  wire [8:0]axi_interconnect_2_m04_axi_ARADDR;
  wire axi_interconnect_2_m04_axi_ARREADY;
  wire [0:0]axi_interconnect_2_m04_axi_ARVALID;
  wire [8:0]axi_interconnect_2_m04_axi_AWADDR;
  wire axi_interconnect_2_m04_axi_AWREADY;
  wire [0:0]axi_interconnect_2_m04_axi_AWVALID;
  wire [0:0]axi_interconnect_2_m04_axi_BREADY;
  wire [1:0]axi_interconnect_2_m04_axi_BRESP;
  wire axi_interconnect_2_m04_axi_BVALID;
  wire [31:0]axi_interconnect_2_m04_axi_RDATA;
  wire [0:0]axi_interconnect_2_m04_axi_RREADY;
  wire [1:0]axi_interconnect_2_m04_axi_RRESP;
  wire axi_interconnect_2_m04_axi_RVALID;
  wire [31:0]axi_interconnect_2_m04_axi_WDATA;
  wire axi_interconnect_2_m04_axi_WREADY;
  wire [3:0]axi_interconnect_2_m04_axi_WSTRB;
  wire [0:0]axi_interconnect_2_m04_axi_WVALID;
  wire [12:0]axi_interconnect_M_AXI_GP1_M00_AXI_ARADDR;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_ARREADY;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_ARVALID;
  wire [12:0]axi_interconnect_M_AXI_GP1_M00_AXI_AWADDR;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_AWREADY;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_AWVALID;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_M00_AXI_BRESP;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_M00_AXI_RDATA;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_M00_AXI_RRESP;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_M00_AXI_WDATA;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_M_AXI_GP1_M00_AXI_WSTRB;
  wire axi_interconnect_M_AXI_GP1_M00_AXI_WVALID;
  wire [9:0]axi_interconnect_M_AXI_GP1_M01_AXI_ARADDR;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_ARREADY;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_ARVALID;
  wire [9:0]axi_interconnect_M_AXI_GP1_M01_AXI_AWADDR;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_AWREADY;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_AWVALID;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_M01_AXI_BRESP;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_M01_AXI_RDATA;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_M01_AXI_RRESP;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_M01_AXI_WDATA;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_WREADY;
  wire axi_interconnect_M_AXI_GP1_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARCACHE;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARID;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARLEN;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARQOS;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_M00_AXI_ARSIZE;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWCACHE;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWID;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWLEN;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWQOS;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_M00_AXI_AWSIZE;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_S_AXI_HP1_M00_AXI_BID;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_BRESP;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_S_AXI_HP1_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_S_AXI_HP1_M00_AXI_RID;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_RLAST;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_RRESP;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_S_AXI_HP1_M00_AXI_WDATA;
  wire [1:0]axi_interconnect_S_AXI_HP1_M00_AXI_WID;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_WLAST;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_S_AXI_HP1_M00_AXI_WSTRB;
  wire axi_interconnect_S_AXI_HP1_M00_AXI_WVALID;
  wire [31:0]axi_vdma_1_m_axi_s2mm_AWADDR;
  wire [1:0]axi_vdma_1_m_axi_s2mm_AWBURST;
  wire [3:0]axi_vdma_1_m_axi_s2mm_AWCACHE;
  wire [7:0]axi_vdma_1_m_axi_s2mm_AWLEN;
  wire [2:0]axi_vdma_1_m_axi_s2mm_AWPROT;
  wire axi_vdma_1_m_axi_s2mm_AWREADY;
  wire [2:0]axi_vdma_1_m_axi_s2mm_AWSIZE;
  wire axi_vdma_1_m_axi_s2mm_AWVALID;
  wire axi_vdma_1_m_axi_s2mm_BREADY;
  wire [1:0]axi_vdma_1_m_axi_s2mm_BRESP;
  wire axi_vdma_1_m_axi_s2mm_BVALID;
  wire [63:0]axi_vdma_1_m_axi_s2mm_WDATA;
  wire axi_vdma_1_m_axi_s2mm_WLAST;
  wire axi_vdma_1_m_axi_s2mm_WREADY;
  wire [7:0]axi_vdma_1_m_axi_s2mm_WSTRB;
  wire axi_vdma_1_m_axi_s2mm_WVALID;
  wire axi_vdma_1_s2mm_fsync_out;
  wire axi_vdma_1_s2mm_introut;
  wire axi_vdma_1_s2mm_prmry_reset_out_n;
  wire [63:0]axis_rtr_datamover_0_M_AXIS_0_TDATA;
  wire [0:0]axis_rtr_datamover_0_M_AXIS_0_TDEST;
  wire [0:0]axis_rtr_datamover_0_M_AXIS_0_TID;
  wire [7:0]axis_rtr_datamover_0_M_AXIS_0_TKEEP;
  wire axis_rtr_datamover_0_M_AXIS_0_TLAST;
  wire axis_rtr_datamover_0_M_AXIS_0_TREADY;
  wire [7:0]axis_rtr_datamover_0_M_AXIS_0_TSTRB;
  wire [0:0]axis_rtr_datamover_0_M_AXIS_0_TUSER;
  wire axis_rtr_datamover_0_M_AXIS_0_TVALID;
  wire [63:0]axis_rtr_datamover_0_m_axis_rxd_TDATA;
  wire [7:0]axis_rtr_datamover_0_m_axis_rxd_TKEEP;
  wire axis_rtr_datamover_0_m_axis_rxd_TLAST;
  wire axis_rtr_datamover_0_m_axis_rxd_TREADY;
  wire axis_rtr_datamover_0_m_axis_rxd_TVALID;
  wire [31:0]axis_rtr_datamover_0_m_axis_rxs_TDATA;
  wire [3:0]axis_rtr_datamover_0_m_axis_rxs_TKEEP;
  wire axis_rtr_datamover_0_m_axis_rxs_TLAST;
  wire axis_rtr_datamover_0_m_axis_rxs_TREADY;
  wire axis_rtr_datamover_0_m_axis_rxs_TVALID;
  wire [31:0]axis_subset_converter_0_m_axis_TDATA;
  wire [2:0]axis_subset_converter_0_m_axis_TKEEP;
  wire axis_subset_converter_0_m_axis_TLAST;
  wire axis_subset_converter_0_m_axis_TREADY;
  wire [0:0]axis_subset_converter_0_m_axis_TUSER;
  wire axis_subset_converter_0_m_axis_TVALID;
  wire [5:0]binary_to_grey_1_grey;
  wire clk_1;
  wire clk_150mhz;
  wire clk_75mhz;
  wire clk_wiz_1_locked;
  wire clkid1;
  wire clkid2;
  wire clkid3;
  wire [31:0]datamover_0_M_AXIS_CNTRL_TDATA;
  wire [3:0]datamover_0_M_AXIS_CNTRL_TKEEP;
  wire datamover_0_M_AXIS_CNTRL_TLAST;
  wire datamover_0_M_AXIS_CNTRL_TREADY;
  wire datamover_0_M_AXIS_CNTRL_TVALID;
  wire [63:0]datamover_0_M_AXIS_MM2S_TDATA;
  wire [7:0]datamover_0_M_AXIS_MM2S_TKEEP;
  wire datamover_0_M_AXIS_MM2S_TLAST;
  wire datamover_0_M_AXIS_MM2S_TREADY;
  wire datamover_0_M_AXIS_MM2S_TVALID;
  wire [31:0]datamover_0_M_AXI_MM2S_ARADDR;
  wire [1:0]datamover_0_M_AXI_MM2S_ARBURST;
  wire [3:0]datamover_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]datamover_0_M_AXI_MM2S_ARLEN;
  wire [2:0]datamover_0_M_AXI_MM2S_ARPROT;
  wire datamover_0_M_AXI_MM2S_ARREADY;
  wire [2:0]datamover_0_M_AXI_MM2S_ARSIZE;
  wire datamover_0_M_AXI_MM2S_ARVALID;
  wire [63:0]datamover_0_M_AXI_MM2S_RDATA;
  wire datamover_0_M_AXI_MM2S_RLAST;
  wire datamover_0_M_AXI_MM2S_RREADY;
  wire [1:0]datamover_0_M_AXI_MM2S_RRESP;
  wire datamover_0_M_AXI_MM2S_RVALID;
  wire [31:0]datamover_0_M_AXI_S2MM_AWADDR;
  wire [1:0]datamover_0_M_AXI_S2MM_AWBURST;
  wire [3:0]datamover_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]datamover_0_M_AXI_S2MM_AWLEN;
  wire [2:0]datamover_0_M_AXI_S2MM_AWPROT;
  wire datamover_0_M_AXI_S2MM_AWREADY;
  wire [2:0]datamover_0_M_AXI_S2MM_AWSIZE;
  wire datamover_0_M_AXI_S2MM_AWVALID;
  wire datamover_0_M_AXI_S2MM_BREADY;
  wire [1:0]datamover_0_M_AXI_S2MM_BRESP;
  wire datamover_0_M_AXI_S2MM_BVALID;
  wire [63:0]datamover_0_M_AXI_S2MM_WDATA;
  wire datamover_0_M_AXI_S2MM_WLAST;
  wire datamover_0_M_AXI_S2MM_WREADY;
  wire [7:0]datamover_0_M_AXI_S2MM_WSTRB;
  wire datamover_0_M_AXI_S2MM_WVALID;
  wire [31:0]datamover_0_M_AXI_SG_ARADDR;
  wire [1:0]datamover_0_M_AXI_SG_ARBURST;
  wire [3:0]datamover_0_M_AXI_SG_ARCACHE;
  wire [7:0]datamover_0_M_AXI_SG_ARLEN;
  wire [2:0]datamover_0_M_AXI_SG_ARPROT;
  wire datamover_0_M_AXI_SG_ARREADY;
  wire [2:0]datamover_0_M_AXI_SG_ARSIZE;
  wire datamover_0_M_AXI_SG_ARVALID;
  wire [31:0]datamover_0_M_AXI_SG_AWADDR;
  wire [1:0]datamover_0_M_AXI_SG_AWBURST;
  wire [3:0]datamover_0_M_AXI_SG_AWCACHE;
  wire [7:0]datamover_0_M_AXI_SG_AWLEN;
  wire [2:0]datamover_0_M_AXI_SG_AWPROT;
  wire datamover_0_M_AXI_SG_AWREADY;
  wire [2:0]datamover_0_M_AXI_SG_AWSIZE;
  wire datamover_0_M_AXI_SG_AWVALID;
  wire datamover_0_M_AXI_SG_BREADY;
  wire [1:0]datamover_0_M_AXI_SG_BRESP;
  wire datamover_0_M_AXI_SG_BVALID;
  wire [31:0]datamover_0_M_AXI_SG_RDATA;
  wire datamover_0_M_AXI_SG_RLAST;
  wire datamover_0_M_AXI_SG_RREADY;
  wire [1:0]datamover_0_M_AXI_SG_RRESP;
  wire datamover_0_M_AXI_SG_RVALID;
  wire [31:0]datamover_0_M_AXI_SG_WDATA;
  wire datamover_0_M_AXI_SG_WLAST;
  wire datamover_0_M_AXI_SG_WREADY;
  wire [3:0]datamover_0_M_AXI_SG_WSTRB;
  wire datamover_0_M_AXI_SG_WVALID;
  wire datamover_0_mm2s_introut;
  wire datamover_0_s2mm_introut;
  wire fmc_imageon_hdmi_in_1_xsvi_active_video_o;
  wire fmc_imageon_hdmi_in_1_xsvi_hblank_o;
  wire fmc_imageon_hdmi_in_1_xsvi_vblank_o;
  wire [15:0]fmc_imageon_hdmi_in_1_xsvi_video_data_o;
  wire img_process_0_if_AP_CTRL_done;
  wire img_process_0_if_AP_CTRL_idle;
  wire img_process_0_if_AP_CTRL_ready;
  wire img_process_0_if_AP_CTRL_start;
  wire [63:0]img_process_0_if_M_AXIS_0_TDATA;
  wire [3:0]img_process_0_if_M_AXIS_0_TDEST;
  wire [3:0]img_process_0_if_M_AXIS_0_TID;
  wire [7:0]img_process_0_if_M_AXIS_0_TKEEP;
  wire img_process_0_if_M_AXIS_0_TLAST;
  wire img_process_0_if_M_AXIS_0_TREADY;
  wire [7:0]img_process_0_if_M_AXIS_0_TSTRB;
  wire [7:0]img_process_0_if_M_AXIS_0_TUSER;
  wire img_process_0_if_M_AXIS_0_TVALID;
  wire [31:0]img_process_0_if_ap_iscalar_0_dout;
  wire [31:0]img_process_0_if_ap_iscalar_1_dout;
  wire [31:0]img_process_0_if_ap_iscalar_2_dout;
  wire img_process_0_if_aresetn;
  wire img_process_0_rgb_data_in_EMPTY_N;
  wire [31:0]img_process_0_rgb_data_in_RD_DATA;
  wire img_process_0_rgb_data_in_RD_EN;
  wire img_process_0_rgb_data_out_FULL_N;
  wire [31:0]img_process_0_rgb_data_out_WR_DATA;
  wire img_process_0_rgb_data_out_WR_EN;
  wire io_hdmii_spdif_1;
  wire [15:0]io_hdmii_video_1;
  wire logicvc_1_blank_o;
  wire [15:0]logicvc_1_d_pix_o;
  wire logicvc_1_hsync_o;
  wire logicvc_1_interrupt;
  wire logicvc_1_pix_clk_o;
  wire logicvc_1_vsync_o;
  wire [5:0]logicvc_2_e_next_vbuff;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_bus_struct_reset;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [31:0]processing_system7_1_M_AXI_GP1_ARADDR;
  wire [1:0]processing_system7_1_M_AXI_GP1_ARBURST;
  wire [3:0]processing_system7_1_M_AXI_GP1_ARCACHE;
  wire [11:0]processing_system7_1_M_AXI_GP1_ARID;
  wire [3:0]processing_system7_1_M_AXI_GP1_ARLEN;
  wire [1:0]processing_system7_1_M_AXI_GP1_ARLOCK;
  wire [2:0]processing_system7_1_M_AXI_GP1_ARPROT;
  wire [3:0]processing_system7_1_M_AXI_GP1_ARQOS;
  wire processing_system7_1_M_AXI_GP1_ARREADY;
  wire [2:0]processing_system7_1_M_AXI_GP1_ARSIZE;
  wire processing_system7_1_M_AXI_GP1_ARVALID;
  wire [31:0]processing_system7_1_M_AXI_GP1_AWADDR;
  wire [1:0]processing_system7_1_M_AXI_GP1_AWBURST;
  wire [3:0]processing_system7_1_M_AXI_GP1_AWCACHE;
  wire [11:0]processing_system7_1_M_AXI_GP1_AWID;
  wire [3:0]processing_system7_1_M_AXI_GP1_AWLEN;
  wire [1:0]processing_system7_1_M_AXI_GP1_AWLOCK;
  wire [2:0]processing_system7_1_M_AXI_GP1_AWPROT;
  wire [3:0]processing_system7_1_M_AXI_GP1_AWQOS;
  wire processing_system7_1_M_AXI_GP1_AWREADY;
  wire [2:0]processing_system7_1_M_AXI_GP1_AWSIZE;
  wire processing_system7_1_M_AXI_GP1_AWVALID;
  wire [11:0]processing_system7_1_M_AXI_GP1_BID;
  wire processing_system7_1_M_AXI_GP1_BREADY;
  wire [1:0]processing_system7_1_M_AXI_GP1_BRESP;
  wire processing_system7_1_M_AXI_GP1_BVALID;
  wire [31:0]processing_system7_1_M_AXI_GP1_RDATA;
  wire [11:0]processing_system7_1_M_AXI_GP1_RID;
  wire processing_system7_1_M_AXI_GP1_RLAST;
  wire processing_system7_1_M_AXI_GP1_RREADY;
  wire [1:0]processing_system7_1_M_AXI_GP1_RRESP;
  wire processing_system7_1_M_AXI_GP1_RVALID;
  wire [31:0]processing_system7_1_M_AXI_GP1_WDATA;
  wire [11:0]processing_system7_1_M_AXI_GP1_WID;
  wire processing_system7_1_M_AXI_GP1_WLAST;
  wire processing_system7_1_M_AXI_GP1_WREADY;
  wire [3:0]processing_system7_1_M_AXI_GP1_WSTRB;
  wire processing_system7_1_M_AXI_GP1_WVALID;
  wire [14:0]processing_system7_1_ddr_ADDR;
  wire [2:0]processing_system7_1_ddr_BA;
  wire processing_system7_1_ddr_CAS_N;
  wire processing_system7_1_ddr_CKE;
  wire processing_system7_1_ddr_CK_N;
  wire processing_system7_1_ddr_CK_P;
  wire processing_system7_1_ddr_CS_N;
  wire [3:0]processing_system7_1_ddr_DM;
  wire [31:0]processing_system7_1_ddr_DQ;
  wire [3:0]processing_system7_1_ddr_DQS_N;
  wire [3:0]processing_system7_1_ddr_DQS_P;
  wire processing_system7_1_ddr_ODT;
  wire processing_system7_1_ddr_RAS_N;
  wire processing_system7_1_ddr_RESET_N;
  wire processing_system7_1_ddr_WE_N;
  wire processing_system7_1_fclk_clk0;
  wire processing_system7_1_fclk_reset0_n;
  wire processing_system7_1_fixed_io_DDR_VRN;
  wire processing_system7_1_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_1_fixed_io_MIO;
  wire processing_system7_1_fixed_io_PS_CLK;
  wire processing_system7_1_fixed_io_PS_PORB;
  wire processing_system7_1_fixed_io_PS_SRSTB;
  wire [63:0]processing_system7_1_gpio_o;
  wire processing_system7_1_iic_1_SCL_I;
  wire processing_system7_1_iic_1_SCL_O;
  wire processing_system7_1_iic_1_SCL_T;
  wire processing_system7_1_iic_1_SDA_I;
  wire processing_system7_1_iic_1_SDA_O;
  wire processing_system7_1_iic_1_SDA_T;
  wire [31:0]s00_axi_1_ARADDR;
  wire [1:0]s00_axi_1_ARBURST;
  wire [3:0]s00_axi_1_ARCACHE;
  wire [11:0]s00_axi_1_ARID;
  wire [3:0]s00_axi_1_ARLEN;
  wire [1:0]s00_axi_1_ARLOCK;
  wire [2:0]s00_axi_1_ARPROT;
  wire [3:0]s00_axi_1_ARQOS;
  wire s00_axi_1_ARREADY;
  wire [2:0]s00_axi_1_ARSIZE;
  wire s00_axi_1_ARVALID;
  wire [31:0]s00_axi_1_AWADDR;
  wire [1:0]s00_axi_1_AWBURST;
  wire [3:0]s00_axi_1_AWCACHE;
  wire [11:0]s00_axi_1_AWID;
  wire [3:0]s00_axi_1_AWLEN;
  wire [1:0]s00_axi_1_AWLOCK;
  wire [2:0]s00_axi_1_AWPROT;
  wire [3:0]s00_axi_1_AWQOS;
  wire s00_axi_1_AWREADY;
  wire [2:0]s00_axi_1_AWSIZE;
  wire s00_axi_1_AWVALID;
  wire [11:0]s00_axi_1_BID;
  wire s00_axi_1_BREADY;
  wire [1:0]s00_axi_1_BRESP;
  wire s00_axi_1_BVALID;
  wire [31:0]s00_axi_1_RDATA;
  wire [11:0]s00_axi_1_RID;
  wire s00_axi_1_RLAST;
  wire s00_axi_1_RREADY;
  wire [1:0]s00_axi_1_RRESP;
  wire s00_axi_1_RVALID;
  wire [31:0]s00_axi_1_WDATA;
  wire [11:0]s00_axi_1_WID;
  wire s00_axi_1_WLAST;
  wire s00_axi_1_WREADY;
  wire [3:0]s00_axi_1_WSTRB;
  wire s00_axi_1_WVALID;
  wire [31:0]s01_axi_1_ARADDR;
  wire [1:0]s01_axi_1_ARBURST;
  wire [3:0]s01_axi_1_ARCACHE;
  wire [0:0]s01_axi_1_ARID;
  wire [7:0]s01_axi_1_ARLEN;
  wire [1:0]s01_axi_1_ARLOCK;
  wire [2:0]s01_axi_1_ARPROT;
  wire [3:0]s01_axi_1_ARQOS;
  wire s01_axi_1_ARREADY;
  wire [2:0]s01_axi_1_ARSIZE;
  wire s01_axi_1_ARVALID;
  wire [31:0]s01_axi_1_AWADDR;
  wire [1:0]s01_axi_1_AWBURST;
  wire [3:0]s01_axi_1_AWCACHE;
  wire [0:0]s01_axi_1_AWID;
  wire [7:0]s01_axi_1_AWLEN;
  wire [1:0]s01_axi_1_AWLOCK;
  wire [2:0]s01_axi_1_AWPROT;
  wire [3:0]s01_axi_1_AWQOS;
  wire s01_axi_1_AWREADY;
  wire [2:0]s01_axi_1_AWSIZE;
  wire s01_axi_1_AWVALID;
  wire [0:0]s01_axi_1_BID;
  wire s01_axi_1_BREADY;
  wire [1:0]s01_axi_1_BRESP;
  wire s01_axi_1_BVALID;
  wire [63:0]s01_axi_1_RDATA;
  wire [0:0]s01_axi_1_RID;
  wire s01_axi_1_RLAST;
  wire s01_axi_1_RREADY;
  wire [1:0]s01_axi_1_RRESP;
  wire s01_axi_1_RVALID;
  wire [63:0]s01_axi_1_WDATA;
  wire s01_axi_1_WLAST;
  wire s01_axi_1_WREADY;
  wire [7:0]s01_axi_1_WSTRB;
  wire s01_axi_1_WVALID;
  wire [0:0]tpg_rst1_dout;
  wire [0:0]util_flipflop_1_q;
  wire util_reduced_logic_1_res;
  wire [0:0]util_vector_logic_1_res;
  wire [23:0]v_cresample_1_video_out_TDATA;
  wire v_cresample_1_video_out_TLAST;
  wire v_cresample_1_video_out_TREADY;
  wire v_cresample_1_video_out_TUSER;
  wire v_cresample_1_video_out_TVALID;
  wire v_tc_1_active_video_out;
  wire v_tc_1_hsync_out;
  wire v_tc_1_vsync_out;
  wire [15:0]v_tpg_1_video_out_TDATA;
  wire v_tpg_1_video_out_TLAST;
  wire v_tpg_1_video_out_TREADY;
  wire v_tpg_1_video_out_TUSER;
  wire v_tpg_1_video_out_TVALID;
  wire [15:0]v_vid_in_axi4s_1_m_axis_video_tdata;
  wire v_vid_in_axi4s_1_video_out_TLAST;
  wire v_vid_in_axi4s_1_video_out_TREADY;
  wire v_vid_in_axi4s_1_video_out_TUSER;
  wire v_vid_in_axi4s_1_video_out_TVALID;
  wire [23:0]v_ycrcb2rgb_1_video_out_TDATA;
  wire v_ycrcb2rgb_1_video_out_TLAST;
  wire v_ycrcb2rgb_1_video_out_TREADY;
  wire v_ycrcb2rgb_1_video_out_TUSER;
  wire v_ycrcb2rgb_1_video_out_TVALID;
  wire [2:0]vbuff_dout;
  wire video_clk_1;
  wire [0:0]vsrc_sel_1_de;
  wire [0:0]vsrc_sel_1_hsync;
  wire [0:0]vsrc_sel_1_video_clk;
  wire [0:0]vsrc_sel_1_vsync;
  wire [15:0]xlconcat_1_dout;
  wire [2:0]xlconcat_2_dout;
  wire [4:0]xlconcat_3_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_const;
  wire [0:0]xlconstant_3_const;
  wire [0:0]xlconstant_4_const;
  wire [15:0]xlconstant_5_const;
  wire [4:0]xlconstant_6_const;
  wire [0:0]xlconstant_zero_const;
  wire [7:0]xlslice_15downto8_dout;
  wire [0:0]xlslice_1_dout;
  wire [0:0]xlslice_1_dout1;
  wire [1:0]xlslice_1_dout2;
  wire [7:0]xlslice_2_dout;
  wire [7:0]xlslice_7downto0_dout;

  assign IIC_1_scl_o = processing_system7_1_iic_1_SCL_O;
  assign IIC_1_scl_t = processing_system7_1_iic_1_SCL_T;
  assign IIC_1_sda_o = processing_system7_1_iic_1_SDA_O;
  assign IIC_1_sda_t = processing_system7_1_iic_1_SDA_T;
  assign Op1 = HDMI_O_int_pin[0];
  assign blank_o = logicvc_1_blank_o;
  assign clk_1 = hdmi_clk;
  assign d_pix_o[15:0] = logicvc_1_d_pix_o;
  assign fmc_imageon_iic_Rst_b_pin[0] = tpg_rst1_dout;
  assign hsync_o = logicvc_1_hsync_o;
  assign io_hdmii_spdif_1 = io_hdmii_spdif;
  assign io_hdmii_video_1 = io_hdmii_video[15:0];
  assign pix_clk_o = logicvc_1_pix_clk_o;
  assign processing_system7_1_iic_1_SCL_I = IIC_1_scl_i;
  assign processing_system7_1_iic_1_SDA_I = IIC_1_sda_i;
  assign video_clk_1 = video_clk;
  assign vsync_o = logicvc_1_vsync_o;
  GND GND
       (.G(GND_1));
  top_TPG_VDMA_0 TPG_VDMA
       (.axi_resetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_s2mm_aclk(clk_150mhz),
        .m_axi_s2mm_awaddr(axi_vdma_1_m_axi_s2mm_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_1_m_axi_s2mm_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_1_m_axi_s2mm_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_1_m_axi_s2mm_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_1_m_axi_s2mm_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_1_m_axi_s2mm_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_1_m_axi_s2mm_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_1_m_axi_s2mm_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_1_m_axi_s2mm_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_1_m_axi_s2mm_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_1_m_axi_s2mm_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_1_m_axi_s2mm_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_1_m_axi_s2mm_WLAST),
        .m_axi_s2mm_wready(axi_vdma_1_m_axi_s2mm_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_1_m_axi_s2mm_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_1_m_axi_s2mm_WVALID),
        .s2mm_frame_ptr_in(binary_to_grey_1_grey),
        .s2mm_fsync_out(axi_vdma_1_s2mm_fsync_out),
        .s2mm_introut(axi_vdma_1_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_vdma_1_s2mm_prmry_reset_out_n),
        .s_axi_lite_aclk(clk_75mhz),
        .s_axi_lite_araddr(axi_interconnect_2_m01_axi_ARADDR),
        .s_axi_lite_arready(axi_interconnect_2_m01_axi_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_2_m01_axi_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_2_m01_axi_AWADDR),
        .s_axi_lite_awready(axi_interconnect_2_m01_axi_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_2_m01_axi_AWVALID),
        .s_axi_lite_bready(axi_interconnect_2_m01_axi_BREADY),
        .s_axi_lite_bresp(axi_interconnect_2_m01_axi_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_2_m01_axi_BVALID),
        .s_axi_lite_rdata(axi_interconnect_2_m01_axi_RDATA),
        .s_axi_lite_rready(axi_interconnect_2_m01_axi_RREADY),
        .s_axi_lite_rresp(axi_interconnect_2_m01_axi_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_2_m01_axi_RVALID),
        .s_axi_lite_wdata(axi_interconnect_2_m01_axi_WDATA),
        .s_axi_lite_wready(axi_interconnect_2_m01_axi_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_2_m01_axi_WVALID),
        .s_axis_s2mm_aclk(clk_150mhz),
        .s_axis_s2mm_tdata(axis_subset_converter_0_m_axis_TDATA),
        .s_axis_s2mm_tkeep({GND_1,axis_subset_converter_0_m_axis_TKEEP}),
        .s_axis_s2mm_tlast(axis_subset_converter_0_m_axis_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_0_m_axis_TREADY),
        .s_axis_s2mm_tuser(axis_subset_converter_0_m_axis_TUSER),
        .s_axis_s2mm_tvalid(axis_subset_converter_0_m_axis_TVALID));
  VCC VCC
       (.P(VCC_1));
  top_axi4_0_0 axi4_0
       (.ACLK(clk_150mhz),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_150mhz),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_m00_axi_ARCACHE),
        .M00_AXI_arid(axi_interconnect_1_m00_axi_ARID),
        .M00_AXI_arlen(axi_interconnect_1_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_m00_axi_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_m00_axi_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_m00_axi_AWCACHE),
        .M00_AXI_awid(axi_interconnect_1_m00_axi_AWID),
        .M00_AXI_awlen(axi_interconnect_1_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_m00_axi_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_m00_axi_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_m00_axi_AWVALID),
        .M00_AXI_bid(axi_interconnect_1_m00_axi_BID[1:0]),
        .M00_AXI_bready(axi_interconnect_1_m00_axi_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_m00_axi_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_m00_axi_RDATA),
        .M00_AXI_rid(axi_interconnect_1_m00_axi_RID[1:0]),
        .M00_AXI_rlast(axi_interconnect_1_m00_axi_RLAST),
        .M00_AXI_rready(axi_interconnect_1_m00_axi_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_m00_axi_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_m00_axi_WDATA),
        .M00_AXI_wid(axi_interconnect_1_m00_axi_WID),
        .M00_AXI_wlast(axi_interconnect_1_m00_axi_WLAST),
        .M00_AXI_wready(axi_interconnect_1_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_m00_axi_WVALID),
        .S00_ACLK(clk_150mhz),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_awaddr(axi_vdma_1_m_axi_s2mm_AWADDR),
        .S00_AXI_awburst(axi_vdma_1_m_axi_s2mm_AWBURST),
        .S00_AXI_awcache(axi_vdma_1_m_axi_s2mm_AWCACHE),
        .S00_AXI_awlen(axi_vdma_1_m_axi_s2mm_AWLEN),
        .S00_AXI_awprot(axi_vdma_1_m_axi_s2mm_AWPROT),
        .S00_AXI_awready(axi_vdma_1_m_axi_s2mm_AWREADY),
        .S00_AXI_awsize(axi_vdma_1_m_axi_s2mm_AWSIZE),
        .S00_AXI_awvalid(axi_vdma_1_m_axi_s2mm_AWVALID),
        .S00_AXI_bready(axi_vdma_1_m_axi_s2mm_BREADY),
        .S00_AXI_bresp(axi_vdma_1_m_axi_s2mm_BRESP),
        .S00_AXI_bvalid(axi_vdma_1_m_axi_s2mm_BVALID),
        .S00_AXI_wdata(axi_vdma_1_m_axi_s2mm_WDATA),
        .S00_AXI_wlast(axi_vdma_1_m_axi_s2mm_WLAST),
        .S00_AXI_wready(axi_vdma_1_m_axi_s2mm_WREADY),
        .S00_AXI_wstrb(axi_vdma_1_m_axi_s2mm_WSTRB),
        .S00_AXI_wvalid(axi_vdma_1_m_axi_s2mm_WVALID),
        .S01_ACLK(clk_150mhz),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S01_AXI_araddr(s01_axi_1_ARADDR),
        .S01_AXI_arburst(s01_axi_1_ARBURST),
        .S01_AXI_arcache(s01_axi_1_ARCACHE),
        .S01_AXI_arid(s01_axi_1_ARID),
        .S01_AXI_arlen(s01_axi_1_ARLEN),
        .S01_AXI_arlock(s01_axi_1_ARLOCK[0]),
        .S01_AXI_arprot(s01_axi_1_ARPROT),
        .S01_AXI_arqos(s01_axi_1_ARQOS),
        .S01_AXI_arready(s01_axi_1_ARREADY),
        .S01_AXI_arsize(s01_axi_1_ARSIZE),
        .S01_AXI_arvalid(s01_axi_1_ARVALID),
        .S01_AXI_awaddr(s01_axi_1_AWADDR),
        .S01_AXI_awburst(s01_axi_1_AWBURST),
        .S01_AXI_awcache(s01_axi_1_AWCACHE),
        .S01_AXI_awid(s01_axi_1_AWID),
        .S01_AXI_awlen(s01_axi_1_AWLEN),
        .S01_AXI_awlock(s01_axi_1_AWLOCK[0]),
        .S01_AXI_awprot(s01_axi_1_AWPROT),
        .S01_AXI_awqos(s01_axi_1_AWQOS),
        .S01_AXI_awready(s01_axi_1_AWREADY),
        .S01_AXI_awsize(s01_axi_1_AWSIZE),
        .S01_AXI_awvalid(s01_axi_1_AWVALID),
        .S01_AXI_bid(s01_axi_1_BID),
        .S01_AXI_bready(s01_axi_1_BREADY),
        .S01_AXI_bresp(s01_axi_1_BRESP),
        .S01_AXI_bvalid(s01_axi_1_BVALID),
        .S01_AXI_rdata(s01_axi_1_RDATA),
        .S01_AXI_rid(s01_axi_1_RID),
        .S01_AXI_rlast(s01_axi_1_RLAST),
        .S01_AXI_rready(s01_axi_1_RREADY),
        .S01_AXI_rresp(s01_axi_1_RRESP),
        .S01_AXI_rvalid(s01_axi_1_RVALID),
        .S01_AXI_wdata(s01_axi_1_WDATA),
        .S01_AXI_wlast(s01_axi_1_WLAST),
        .S01_AXI_wready(s01_axi_1_WREADY),
        .S01_AXI_wstrb(s01_axi_1_WSTRB),
        .S01_AXI_wvalid(s01_axi_1_WVALID));
  top_axi4_lite_1 axi4_lite
       (.ACLK(clk_75mhz),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_75mhz),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_2_m00_axi_ARADDR),
        .M00_AXI_arready(axi_interconnect_2_m00_axi_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_2_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_2_m00_axi_AWADDR),
        .M00_AXI_awready(axi_interconnect_2_m00_axi_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_2_m00_axi_AWVALID),
        .M00_AXI_bready(axi_interconnect_2_m00_axi_BREADY),
        .M00_AXI_bresp(axi_interconnect_2_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_interconnect_2_m00_axi_BVALID),
        .M00_AXI_rdata(axi_interconnect_2_m00_axi_RDATA),
        .M00_AXI_rready(axi_interconnect_2_m00_axi_RREADY),
        .M00_AXI_rresp(axi_interconnect_2_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_interconnect_2_m00_axi_RVALID),
        .M00_AXI_wdata(axi_interconnect_2_m00_axi_WDATA),
        .M00_AXI_wready(axi_interconnect_2_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_interconnect_2_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_2_m00_axi_WVALID),
        .M01_ACLK(clk_75mhz),
        .M01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_2_m01_axi_ARADDR),
        .M01_AXI_arready(axi_interconnect_2_m01_axi_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_2_m01_axi_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_2_m01_axi_AWADDR),
        .M01_AXI_awready(axi_interconnect_2_m01_axi_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_2_m01_axi_AWVALID),
        .M01_AXI_bready(axi_interconnect_2_m01_axi_BREADY),
        .M01_AXI_bresp(axi_interconnect_2_m01_axi_BRESP),
        .M01_AXI_bvalid(axi_interconnect_2_m01_axi_BVALID),
        .M01_AXI_rdata(axi_interconnect_2_m01_axi_RDATA),
        .M01_AXI_rready(axi_interconnect_2_m01_axi_RREADY),
        .M01_AXI_rresp(axi_interconnect_2_m01_axi_RRESP),
        .M01_AXI_rvalid(axi_interconnect_2_m01_axi_RVALID),
        .M01_AXI_wdata(axi_interconnect_2_m01_axi_WDATA),
        .M01_AXI_wready(axi_interconnect_2_m01_axi_WREADY),
        .M01_AXI_wvalid(axi_interconnect_2_m01_axi_WVALID),
        .M02_ACLK(clk_75mhz),
        .M02_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M02_AXI_araddr(axi_interconnect_2_m02_axi_ARADDR),
        .M02_AXI_arready(axi_interconnect_2_m02_axi_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_2_m02_axi_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_2_m02_axi_AWADDR),
        .M02_AXI_awready(axi_interconnect_2_m02_axi_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_2_m02_axi_AWVALID),
        .M02_AXI_bready(axi_interconnect_2_m02_axi_BREADY),
        .M02_AXI_bresp(axi_interconnect_2_m02_axi_BRESP),
        .M02_AXI_bvalid(axi_interconnect_2_m02_axi_BVALID),
        .M02_AXI_rdata(axi_interconnect_2_m02_axi_RDATA),
        .M02_AXI_rready(axi_interconnect_2_m02_axi_RREADY),
        .M02_AXI_rresp(axi_interconnect_2_m02_axi_RRESP),
        .M02_AXI_rvalid(axi_interconnect_2_m02_axi_RVALID),
        .M02_AXI_wdata(axi_interconnect_2_m02_axi_WDATA),
        .M02_AXI_wready(axi_interconnect_2_m02_axi_WREADY),
        .M02_AXI_wstrb(axi_interconnect_2_m02_axi_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_2_m02_axi_WVALID),
        .M03_ACLK(clk_75mhz),
        .M03_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M03_AXI_araddr(axi_interconnect_2_m03_axi_ARADDR),
        .M03_AXI_arready(axi_interconnect_2_m03_axi_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_2_m03_axi_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_2_m03_axi_AWADDR),
        .M03_AXI_awready(axi_interconnect_2_m03_axi_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_2_m03_axi_AWVALID),
        .M03_AXI_bready(axi_interconnect_2_m03_axi_BREADY),
        .M03_AXI_bresp(axi_interconnect_2_m03_axi_BRESP),
        .M03_AXI_bvalid(axi_interconnect_2_m03_axi_BVALID),
        .M03_AXI_rdata(axi_interconnect_2_m03_axi_RDATA),
        .M03_AXI_rready(axi_interconnect_2_m03_axi_RREADY),
        .M03_AXI_rresp(axi_interconnect_2_m03_axi_RRESP),
        .M03_AXI_rvalid(axi_interconnect_2_m03_axi_RVALID),
        .M03_AXI_wdata(axi_interconnect_2_m03_axi_WDATA),
        .M03_AXI_wready(axi_interconnect_2_m03_axi_WREADY),
        .M03_AXI_wstrb(axi_interconnect_2_m03_axi_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_2_m03_axi_WVALID),
        .M04_ACLK(clk_75mhz),
        .M04_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M04_AXI_araddr(axi_interconnect_2_m04_axi_ARADDR),
        .M04_AXI_arready(axi_interconnect_2_m04_axi_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_2_m04_axi_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_2_m04_axi_AWADDR),
        .M04_AXI_awready(axi_interconnect_2_m04_axi_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_2_m04_axi_AWVALID),
        .M04_AXI_bready(axi_interconnect_2_m04_axi_BREADY),
        .M04_AXI_bresp(axi_interconnect_2_m04_axi_BRESP),
        .M04_AXI_bvalid(axi_interconnect_2_m04_axi_BVALID),
        .M04_AXI_rdata(axi_interconnect_2_m04_axi_RDATA),
        .M04_AXI_rready(axi_interconnect_2_m04_axi_RREADY),
        .M04_AXI_rresp(axi_interconnect_2_m04_axi_RRESP),
        .M04_AXI_rvalid(axi_interconnect_2_m04_axi_RVALID),
        .M04_AXI_wdata(axi_interconnect_2_m04_axi_WDATA),
        .M04_AXI_wready(axi_interconnect_2_m04_axi_WREADY),
        .M04_AXI_wstrb(axi_interconnect_2_m04_axi_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_2_m04_axi_WVALID),
        .M05_ACLK(clk_75mhz),
        .M05_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M05_AXI_araddr(axi4_lite_m05_axi_ARADDR),
        .M05_AXI_arready(axi4_lite_m05_axi_ARREADY),
        .M05_AXI_arvalid(axi4_lite_m05_axi_ARVALID),
        .M05_AXI_awaddr(axi4_lite_m05_axi_AWADDR),
        .M05_AXI_awready(axi4_lite_m05_axi_AWREADY),
        .M05_AXI_awvalid(axi4_lite_m05_axi_AWVALID),
        .M05_AXI_bready(axi4_lite_m05_axi_BREADY),
        .M05_AXI_bresp(axi4_lite_m05_axi_BRESP),
        .M05_AXI_bvalid(axi4_lite_m05_axi_BVALID),
        .M05_AXI_rdata(axi4_lite_m05_axi_RDATA),
        .M05_AXI_rready(axi4_lite_m05_axi_RREADY),
        .M05_AXI_rresp(axi4_lite_m05_axi_RRESP),
        .M05_AXI_rvalid(axi4_lite_m05_axi_RVALID),
        .M05_AXI_wdata(axi4_lite_m05_axi_WDATA),
        .M05_AXI_wready(axi4_lite_m05_axi_WREADY),
        .M05_AXI_wstrb(axi4_lite_m05_axi_WSTRB),
        .M05_AXI_wvalid(axi4_lite_m05_axi_WVALID),
        .S00_ACLK(clk_75mhz),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(s00_axi_1_ARADDR),
        .S00_AXI_arburst(s00_axi_1_ARBURST),
        .S00_AXI_arcache(s00_axi_1_ARCACHE),
        .S00_AXI_arid(s00_axi_1_ARID),
        .S00_AXI_arlen(s00_axi_1_ARLEN),
        .S00_AXI_arlock(s00_axi_1_ARLOCK),
        .S00_AXI_arprot(s00_axi_1_ARPROT),
        .S00_AXI_arqos(s00_axi_1_ARQOS),
        .S00_AXI_arready(s00_axi_1_ARREADY),
        .S00_AXI_arsize(s00_axi_1_ARSIZE),
        .S00_AXI_arvalid(s00_axi_1_ARVALID),
        .S00_AXI_awaddr(s00_axi_1_AWADDR),
        .S00_AXI_awburst(s00_axi_1_AWBURST),
        .S00_AXI_awcache(s00_axi_1_AWCACHE),
        .S00_AXI_awid(s00_axi_1_AWID),
        .S00_AXI_awlen(s00_axi_1_AWLEN),
        .S00_AXI_awlock(s00_axi_1_AWLOCK),
        .S00_AXI_awprot(s00_axi_1_AWPROT),
        .S00_AXI_awqos(s00_axi_1_AWQOS),
        .S00_AXI_awready(s00_axi_1_AWREADY),
        .S00_AXI_awsize(s00_axi_1_AWSIZE),
        .S00_AXI_awvalid(s00_axi_1_AWVALID),
        .S00_AXI_bid(s00_axi_1_BID),
        .S00_AXI_bready(s00_axi_1_BREADY),
        .S00_AXI_bresp(s00_axi_1_BRESP),
        .S00_AXI_bvalid(s00_axi_1_BVALID),
        .S00_AXI_rdata(s00_axi_1_RDATA),
        .S00_AXI_rid(s00_axi_1_RID),
        .S00_AXI_rlast(s00_axi_1_RLAST),
        .S00_AXI_rready(s00_axi_1_RREADY),
        .S00_AXI_rresp(s00_axi_1_RRESP),
        .S00_AXI_rvalid(s00_axi_1_RVALID),
        .S00_AXI_wdata(s00_axi_1_WDATA),
        .S00_AXI_wid(s00_axi_1_WID),
        .S00_AXI_wlast(s00_axi_1_WLAST),
        .S00_AXI_wready(s00_axi_1_WREADY),
        .S00_AXI_wstrb(s00_axi_1_WSTRB),
        .S00_AXI_wvalid(s00_axi_1_WVALID));
  top_axi_interconnect_M_AXI_GP1_0 axi_interconnect_M_AXI_GP1
       (.ACLK(clkid1),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clkid1),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_M_AXI_GP1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_M_AXI_GP1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_M_AXI_GP1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_M_AXI_GP1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_M_AXI_GP1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_M_AXI_GP1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_M_AXI_GP1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_M_AXI_GP1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_M_AXI_GP1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_M_AXI_GP1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_M_AXI_GP1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_M_AXI_GP1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_M_AXI_GP1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_M_AXI_GP1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_M_AXI_GP1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_M_AXI_GP1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_M_AXI_GP1_M00_AXI_WVALID),
        .M01_ACLK(clkid1),
        .M01_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_M_AXI_GP1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_M_AXI_GP1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_M_AXI_GP1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_M_AXI_GP1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_M_AXI_GP1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_M_AXI_GP1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_M_AXI_GP1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_M_AXI_GP1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_M_AXI_GP1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_M_AXI_GP1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_M_AXI_GP1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_M_AXI_GP1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_M_AXI_GP1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_M_AXI_GP1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_M_AXI_GP1_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_M_AXI_GP1_M01_AXI_WVALID),
        .S00_ACLK(clkid1),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(processing_system7_1_M_AXI_GP1_ARADDR),
        .S00_AXI_arburst(processing_system7_1_M_AXI_GP1_ARBURST),
        .S00_AXI_arcache(processing_system7_1_M_AXI_GP1_ARCACHE),
        .S00_AXI_arid(processing_system7_1_M_AXI_GP1_ARID),
        .S00_AXI_arlen(processing_system7_1_M_AXI_GP1_ARLEN),
        .S00_AXI_arlock(processing_system7_1_M_AXI_GP1_ARLOCK),
        .S00_AXI_arprot(processing_system7_1_M_AXI_GP1_ARPROT),
        .S00_AXI_arqos(processing_system7_1_M_AXI_GP1_ARQOS),
        .S00_AXI_arready(processing_system7_1_M_AXI_GP1_ARREADY),
        .S00_AXI_arsize(processing_system7_1_M_AXI_GP1_ARSIZE),
        .S00_AXI_arvalid(processing_system7_1_M_AXI_GP1_ARVALID),
        .S00_AXI_awaddr(processing_system7_1_M_AXI_GP1_AWADDR),
        .S00_AXI_awburst(processing_system7_1_M_AXI_GP1_AWBURST),
        .S00_AXI_awcache(processing_system7_1_M_AXI_GP1_AWCACHE),
        .S00_AXI_awid(processing_system7_1_M_AXI_GP1_AWID),
        .S00_AXI_awlen(processing_system7_1_M_AXI_GP1_AWLEN),
        .S00_AXI_awlock(processing_system7_1_M_AXI_GP1_AWLOCK),
        .S00_AXI_awprot(processing_system7_1_M_AXI_GP1_AWPROT),
        .S00_AXI_awqos(processing_system7_1_M_AXI_GP1_AWQOS),
        .S00_AXI_awready(processing_system7_1_M_AXI_GP1_AWREADY),
        .S00_AXI_awsize(processing_system7_1_M_AXI_GP1_AWSIZE),
        .S00_AXI_awvalid(processing_system7_1_M_AXI_GP1_AWVALID),
        .S00_AXI_bid(processing_system7_1_M_AXI_GP1_BID),
        .S00_AXI_bready(processing_system7_1_M_AXI_GP1_BREADY),
        .S00_AXI_bresp(processing_system7_1_M_AXI_GP1_BRESP),
        .S00_AXI_bvalid(processing_system7_1_M_AXI_GP1_BVALID),
        .S00_AXI_rdata(processing_system7_1_M_AXI_GP1_RDATA),
        .S00_AXI_rid(processing_system7_1_M_AXI_GP1_RID),
        .S00_AXI_rlast(processing_system7_1_M_AXI_GP1_RLAST),
        .S00_AXI_rready(processing_system7_1_M_AXI_GP1_RREADY),
        .S00_AXI_rresp(processing_system7_1_M_AXI_GP1_RRESP),
        .S00_AXI_rvalid(processing_system7_1_M_AXI_GP1_RVALID),
        .S00_AXI_wdata(processing_system7_1_M_AXI_GP1_WDATA),
        .S00_AXI_wid(processing_system7_1_M_AXI_GP1_WID),
        .S00_AXI_wlast(processing_system7_1_M_AXI_GP1_WLAST),
        .S00_AXI_wready(processing_system7_1_M_AXI_GP1_WREADY),
        .S00_AXI_wstrb(processing_system7_1_M_AXI_GP1_WSTRB),
        .S00_AXI_wvalid(processing_system7_1_M_AXI_GP1_WVALID));
  top_axi_interconnect_S_AXI_HP1_0 axi_interconnect_S_AXI_HP1
       (.ACLK(clkid1),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clkid1),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_S_AXI_HP1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_S_AXI_HP1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_S_AXI_HP1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_S_AXI_HP1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_S_AXI_HP1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_S_AXI_HP1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_S_AXI_HP1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_S_AXI_HP1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_S_AXI_HP1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_S_AXI_HP1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_S_AXI_HP1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_S_AXI_HP1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_S_AXI_HP1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_S_AXI_HP1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_S_AXI_HP1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_S_AXI_HP1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_S_AXI_HP1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_S_AXI_HP1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_S_AXI_HP1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_S_AXI_HP1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_S_AXI_HP1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_S_AXI_HP1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_S_AXI_HP1_M00_AXI_BID[1:0]),
        .M00_AXI_bready(axi_interconnect_S_AXI_HP1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_S_AXI_HP1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_S_AXI_HP1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_S_AXI_HP1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_S_AXI_HP1_M00_AXI_RID[1:0]),
        .M00_AXI_rlast(axi_interconnect_S_AXI_HP1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_S_AXI_HP1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_S_AXI_HP1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_S_AXI_HP1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_S_AXI_HP1_M00_AXI_WDATA),
        .M00_AXI_wid(axi_interconnect_S_AXI_HP1_M00_AXI_WID),
        .M00_AXI_wlast(axi_interconnect_S_AXI_HP1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_S_AXI_HP1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_S_AXI_HP1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_S_AXI_HP1_M00_AXI_WVALID),
        .S00_ACLK(clkid1),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(datamover_0_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(datamover_0_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(datamover_0_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(datamover_0_M_AXI_SG_ARLEN),
        .S00_AXI_arprot(datamover_0_M_AXI_SG_ARPROT),
        .S00_AXI_arready(datamover_0_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(datamover_0_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(datamover_0_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(datamover_0_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(datamover_0_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(datamover_0_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(datamover_0_M_AXI_SG_AWLEN),
        .S00_AXI_awprot(datamover_0_M_AXI_SG_AWPROT),
        .S00_AXI_awready(datamover_0_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(datamover_0_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(datamover_0_M_AXI_SG_AWVALID),
        .S00_AXI_bready(datamover_0_M_AXI_SG_BREADY),
        .S00_AXI_bresp(datamover_0_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(datamover_0_M_AXI_SG_BVALID),
        .S00_AXI_rdata(datamover_0_M_AXI_SG_RDATA),
        .S00_AXI_rlast(datamover_0_M_AXI_SG_RLAST),
        .S00_AXI_rready(datamover_0_M_AXI_SG_RREADY),
        .S00_AXI_rresp(datamover_0_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(datamover_0_M_AXI_SG_RVALID),
        .S00_AXI_wdata(datamover_0_M_AXI_SG_WDATA),
        .S00_AXI_wlast(datamover_0_M_AXI_SG_WLAST),
        .S00_AXI_wready(datamover_0_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(datamover_0_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(datamover_0_M_AXI_SG_WVALID),
        .S01_ACLK(clkid1),
        .S01_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S01_AXI_araddr(datamover_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(datamover_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(datamover_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(datamover_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(datamover_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(datamover_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(datamover_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(datamover_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(datamover_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(datamover_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(datamover_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(datamover_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(datamover_0_M_AXI_MM2S_RVALID),
        .S02_ACLK(clkid1),
        .S02_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S02_AXI_awaddr(datamover_0_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(datamover_0_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(datamover_0_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(datamover_0_M_AXI_S2MM_AWLEN),
        .S02_AXI_awprot(datamover_0_M_AXI_S2MM_AWPROT),
        .S02_AXI_awready(datamover_0_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(datamover_0_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awvalid(datamover_0_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(datamover_0_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(datamover_0_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(datamover_0_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(datamover_0_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(datamover_0_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(datamover_0_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(datamover_0_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(datamover_0_M_AXI_S2MM_WVALID));
  top_axis_rtr_datamover_0_0 axis_rtr_datamover_0
       (.M_AXIS_0_ACLK(clkid1),
        .M_AXIS_0_TDATA(axis_rtr_datamover_0_M_AXIS_0_TDATA),
        .M_AXIS_0_TDEST(axis_rtr_datamover_0_M_AXIS_0_TDEST),
        .M_AXIS_0_TID(axis_rtr_datamover_0_M_AXIS_0_TID),
        .M_AXIS_0_TKEEP(axis_rtr_datamover_0_M_AXIS_0_TKEEP),
        .M_AXIS_0_TLAST(axis_rtr_datamover_0_M_AXIS_0_TLAST),
        .M_AXIS_0_TREADY(axis_rtr_datamover_0_M_AXIS_0_TREADY),
        .M_AXIS_0_TSTRB(axis_rtr_datamover_0_M_AXIS_0_TSTRB),
        .M_AXIS_0_TUSER(axis_rtr_datamover_0_M_AXIS_0_TUSER),
        .M_AXIS_0_TVALID(axis_rtr_datamover_0_M_AXIS_0_TVALID),
        .S_AXIS_0_ACLK(clkid1),
        .S_AXIS_0_TDATA(img_process_0_if_M_AXIS_0_TDATA),
        .S_AXIS_0_TDEST(img_process_0_if_M_AXIS_0_TDEST[0]),
        .S_AXIS_0_TID(img_process_0_if_M_AXIS_0_TID[0]),
        .S_AXIS_0_TKEEP(img_process_0_if_M_AXIS_0_TKEEP),
        .S_AXIS_0_TLAST(img_process_0_if_M_AXIS_0_TLAST),
        .S_AXIS_0_TREADY(img_process_0_if_M_AXIS_0_TREADY),
        .S_AXIS_0_TSTRB(img_process_0_if_M_AXIS_0_TSTRB),
        .S_AXIS_0_TUSER(img_process_0_if_M_AXIS_0_TUSER[0]),
        .S_AXIS_0_TVALID(img_process_0_if_M_AXIS_0_TVALID),
        .m_axis_rxd_aclk(clkid1),
        .m_axis_rxd_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_rxd_tdata(axis_rtr_datamover_0_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axis_rtr_datamover_0_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axis_rtr_datamover_0_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axis_rtr_datamover_0_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axis_rtr_datamover_0_m_axis_rxd_TVALID),
        .m_axis_rxs_aclk(clkid1),
        .m_axis_rxs_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_rxs_tdata(axis_rtr_datamover_0_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axis_rtr_datamover_0_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axis_rtr_datamover_0_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axis_rtr_datamover_0_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axis_rtr_datamover_0_m_axis_rxs_TVALID),
        .s_axis_txc_aclk(clkid1),
        .s_axis_txc_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_txc_tdata(datamover_0_M_AXIS_CNTRL_TDATA),
        .s_axis_txc_tkeep(datamover_0_M_AXIS_CNTRL_TKEEP),
        .s_axis_txc_tlast(datamover_0_M_AXIS_CNTRL_TLAST),
        .s_axis_txc_tready(datamover_0_M_AXIS_CNTRL_TREADY),
        .s_axis_txc_tvalid(datamover_0_M_AXIS_CNTRL_TVALID),
        .s_axis_txd_aclk(clkid1),
        .s_axis_txd_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_txd_tdata(datamover_0_M_AXIS_MM2S_TDATA),
        .s_axis_txd_tkeep(datamover_0_M_AXIS_MM2S_TKEEP),
        .s_axis_txd_tlast(datamover_0_M_AXIS_MM2S_TLAST),
        .s_axis_txd_tready(datamover_0_M_AXIS_MM2S_TREADY),
        .s_axis_txd_tvalid(datamover_0_M_AXIS_MM2S_TVALID));
  top_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(clk_150mhz),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axis_tdata(axis_subset_converter_0_m_axis_TDATA),
        .m_axis_tkeep(axis_subset_converter_0_m_axis_TKEEP),
        .m_axis_tlast(axis_subset_converter_0_m_axis_TLAST),
        .m_axis_tready(axis_subset_converter_0_m_axis_TREADY),
        .m_axis_tuser(axis_subset_converter_0_m_axis_TUSER),
        .m_axis_tvalid(axis_subset_converter_0_m_axis_TVALID),
        .s_axis_tdata(v_ycrcb2rgb_1_video_out_TDATA),
        .s_axis_tlast(v_ycrcb2rgb_1_video_out_TLAST),
        .s_axis_tready(v_ycrcb2rgb_1_video_out_TREADY),
        .s_axis_tuser(v_ycrcb2rgb_1_video_out_TUSER),
        .s_axis_tvalid(v_ycrcb2rgb_1_video_out_TVALID));
  top_binary_to_grey_1_0 binary_to_grey_1
       (.binary(xlslice_1_dout2),
        .grey(binary_to_grey_1_grey));
  top_clk_wiz_2_0 clk_wiz_2
       (.clk_in1(processing_system7_1_fclk_clk0),
        .clk_out1(clk_75mhz),
        .clk_out2(clk_150mhz),
        .locked(clk_wiz_1_locked),
        .reset(xlconstant_0_dout));
  top_datamover_0_0 datamover_0
       (.axi_resetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_mm2s_aclk(clkid1),
        .m_axi_mm2s_araddr(datamover_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(datamover_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(datamover_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(datamover_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(datamover_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(datamover_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(datamover_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(datamover_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(datamover_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(datamover_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(datamover_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(datamover_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(datamover_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(clkid1),
        .m_axi_s2mm_awaddr(datamover_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(datamover_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(datamover_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(datamover_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(datamover_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(datamover_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(datamover_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(datamover_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(datamover_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(datamover_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(datamover_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(datamover_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(datamover_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(datamover_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(datamover_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(datamover_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(clkid1),
        .m_axi_sg_araddr(datamover_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(datamover_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(datamover_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(datamover_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(datamover_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(datamover_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(datamover_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(datamover_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(datamover_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(datamover_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(datamover_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(datamover_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(datamover_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(datamover_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(datamover_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(datamover_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(datamover_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(datamover_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(datamover_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(datamover_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(datamover_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(datamover_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(datamover_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(datamover_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(datamover_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(datamover_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(datamover_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(datamover_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(datamover_0_M_AXI_SG_WVALID),
        .m_axis_mm2s_cntrl_tdata(datamover_0_M_AXIS_CNTRL_TDATA),
        .m_axis_mm2s_cntrl_tkeep(datamover_0_M_AXIS_CNTRL_TKEEP),
        .m_axis_mm2s_cntrl_tlast(datamover_0_M_AXIS_CNTRL_TLAST),
        .m_axis_mm2s_cntrl_tready(datamover_0_M_AXIS_CNTRL_TREADY),
        .m_axis_mm2s_cntrl_tvalid(datamover_0_M_AXIS_CNTRL_TVALID),
        .m_axis_mm2s_tdata(datamover_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(datamover_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(datamover_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(datamover_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(datamover_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(datamover_0_mm2s_introut),
        .s2mm_introut(datamover_0_s2mm_introut),
        .s_axi_lite_aclk(clkid1),
        .s_axi_lite_araddr(axi_interconnect_M_AXI_GP1_M01_AXI_ARADDR),
        .s_axi_lite_arready(axi_interconnect_M_AXI_GP1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_M_AXI_GP1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_M_AXI_GP1_M01_AXI_AWADDR),
        .s_axi_lite_awready(axi_interconnect_M_AXI_GP1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_M_AXI_GP1_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_M_AXI_GP1_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_M_AXI_GP1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_M_AXI_GP1_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_M_AXI_GP1_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_M_AXI_GP1_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_M_AXI_GP1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_M_AXI_GP1_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_M_AXI_GP1_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_M_AXI_GP1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_M_AXI_GP1_M01_AXI_WVALID),
        .s_axis_s2mm_sts_tdata(axis_rtr_datamover_0_m_axis_rxs_TDATA),
        .s_axis_s2mm_sts_tkeep(axis_rtr_datamover_0_m_axis_rxs_TKEEP),
        .s_axis_s2mm_sts_tlast(axis_rtr_datamover_0_m_axis_rxs_TLAST),
        .s_axis_s2mm_sts_tready(axis_rtr_datamover_0_m_axis_rxs_TREADY),
        .s_axis_s2mm_sts_tvalid(axis_rtr_datamover_0_m_axis_rxs_TVALID),
        .s_axis_s2mm_tdata(axis_rtr_datamover_0_m_axis_rxd_TDATA),
        .s_axis_s2mm_tkeep(axis_rtr_datamover_0_m_axis_rxd_TKEEP),
        .s_axis_s2mm_tlast(axis_rtr_datamover_0_m_axis_rxd_TLAST),
        .s_axis_s2mm_tready(axis_rtr_datamover_0_m_axis_rxd_TREADY),
        .s_axis_s2mm_tvalid(axis_rtr_datamover_0_m_axis_rxd_TVALID));
  top_fmc_imageon_hdmi_in_1_0 fmc_imageon_hdmi_in_1
       (.clk(clk_1),
        .io_hdmii_spdif(io_hdmii_spdif_1),
        .io_hdmii_video(io_hdmii_video_1),
        .xsvi_active_video_o(fmc_imageon_hdmi_in_1_xsvi_active_video_o),
        .xsvi_hblank_o(fmc_imageon_hdmi_in_1_xsvi_hblank_o),
        .xsvi_vblank_o(fmc_imageon_hdmi_in_1_xsvi_vblank_o),
        .xsvi_video_data_o(fmc_imageon_hdmi_in_1_xsvi_video_data_o));
  top_img_process_0_0 img_process_0
       (.ap_clk(clkid1),
        .ap_done(img_process_0_if_AP_CTRL_done),
        .ap_idle(img_process_0_if_AP_CTRL_idle),
        .ap_ready(img_process_0_if_AP_CTRL_ready),
        .ap_rst_n(img_process_0_if_aresetn),
        .ap_start(img_process_0_if_AP_CTRL_start),
        .imaxsobelSensitivity(img_process_0_if_ap_iscalar_2_dout),
        .iminsobelSensitivity(img_process_0_if_ap_iscalar_1_dout),
        .isobelInvert(img_process_0_if_ap_iscalar_0_dout),
        .rgb_data_in_dout(img_process_0_rgb_data_in_RD_DATA),
        .rgb_data_in_empty_n(img_process_0_rgb_data_in_EMPTY_N),
        .rgb_data_in_read(img_process_0_rgb_data_in_RD_EN),
        .rgb_data_out_din(img_process_0_rgb_data_out_WR_DATA),
        .rgb_data_out_full_n(img_process_0_rgb_data_out_FULL_N),
        .rgb_data_out_write(img_process_0_rgb_data_out_WR_EN));
  top_img_process_0_if_0 img_process_0_if
       (.aclk(clkid1),
        .ap_done(img_process_0_if_AP_CTRL_done),
        .ap_fifo_iarg_0_dout(img_process_0_rgb_data_in_RD_DATA),
        .ap_fifo_iarg_0_empty_n(img_process_0_rgb_data_in_EMPTY_N),
        .ap_fifo_iarg_0_read(img_process_0_rgb_data_in_RD_EN),
        .ap_fifo_oarg_0_din(img_process_0_rgb_data_out_WR_DATA),
        .ap_fifo_oarg_0_full_n(img_process_0_rgb_data_out_FULL_N),
        .ap_fifo_oarg_0_write(img_process_0_rgb_data_out_WR_EN),
        .ap_idle(img_process_0_if_AP_CTRL_idle),
        .ap_iscalar_0_dout(img_process_0_if_ap_iscalar_0_dout),
        .ap_iscalar_1_dout(img_process_0_if_ap_iscalar_1_dout),
        .ap_iscalar_2_dout(img_process_0_if_ap_iscalar_2_dout),
        .ap_ready(img_process_0_if_AP_CTRL_ready),
        .ap_start(img_process_0_if_AP_CTRL_start),
        .aresetn(img_process_0_if_aresetn),
        .m_axis_0_tdata(img_process_0_if_M_AXIS_0_TDATA),
        .m_axis_0_tdest(img_process_0_if_M_AXIS_0_TDEST),
        .m_axis_0_tid(img_process_0_if_M_AXIS_0_TID),
        .m_axis_0_tkeep(img_process_0_if_M_AXIS_0_TKEEP),
        .m_axis_0_tlast(img_process_0_if_M_AXIS_0_TLAST),
        .m_axis_0_tready(img_process_0_if_M_AXIS_0_TREADY),
        .m_axis_0_tstrb(img_process_0_if_M_AXIS_0_TSTRB),
        .m_axis_0_tuser(img_process_0_if_M_AXIS_0_TUSER),
        .m_axis_0_tvalid(img_process_0_if_M_AXIS_0_TVALID),
        .m_axis_aclk(clkid1),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_aclk(clkid1),
        .s_axi_araddr(axi_interconnect_M_AXI_GP1_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_M_AXI_GP1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_M_AXI_GP1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_M_AXI_GP1_M00_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_M_AXI_GP1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_M_AXI_GP1_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_M_AXI_GP1_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_M_AXI_GP1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_M_AXI_GP1_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_M_AXI_GP1_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_M_AXI_GP1_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_M_AXI_GP1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_M_AXI_GP1_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_M_AXI_GP1_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_M_AXI_GP1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_M_AXI_GP1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_M_AXI_GP1_M00_AXI_WVALID),
        .s_axis_0_tdata(axis_rtr_datamover_0_M_AXIS_0_TDATA),
        .s_axis_0_tdest(axis_rtr_datamover_0_M_AXIS_0_TDEST),
        .s_axis_0_tid(axis_rtr_datamover_0_M_AXIS_0_TID),
        .s_axis_0_tkeep(axis_rtr_datamover_0_M_AXIS_0_TKEEP),
        .s_axis_0_tlast(axis_rtr_datamover_0_M_AXIS_0_TLAST),
        .s_axis_0_tready(axis_rtr_datamover_0_M_AXIS_0_TREADY),
        .s_axis_0_tstrb(axis_rtr_datamover_0_M_AXIS_0_TSTRB),
        .s_axis_0_tuser(axis_rtr_datamover_0_M_AXIS_0_TUSER),
        .s_axis_0_tvalid(axis_rtr_datamover_0_M_AXIS_0_TVALID),
        .s_axis_aclk(clkid1),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn));
  top_logicvc_1_0 logicvc_1
       (.M_AXI_ACLK(clk_150mhz),
        .M_AXI_ARADDR(s01_axi_1_ARADDR),
        .M_AXI_ARBURST(s01_axi_1_ARBURST),
        .M_AXI_ARCACHE(s01_axi_1_ARCACHE),
        .M_AXI_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M_AXI_ARID(s01_axi_1_ARID),
        .M_AXI_ARLEN(s01_axi_1_ARLEN),
        .M_AXI_ARLOCK(s01_axi_1_ARLOCK),
        .M_AXI_ARPROT(s01_axi_1_ARPROT),
        .M_AXI_ARQOS(s01_axi_1_ARQOS),
        .M_AXI_ARREADY(s01_axi_1_ARREADY),
        .M_AXI_ARSIZE(s01_axi_1_ARSIZE),
        .M_AXI_ARVALID(s01_axi_1_ARVALID),
        .M_AXI_AWADDR(s01_axi_1_AWADDR),
        .M_AXI_AWBURST(s01_axi_1_AWBURST),
        .M_AXI_AWCACHE(s01_axi_1_AWCACHE),
        .M_AXI_AWID(s01_axi_1_AWID),
        .M_AXI_AWLEN(s01_axi_1_AWLEN),
        .M_AXI_AWLOCK(s01_axi_1_AWLOCK),
        .M_AXI_AWPROT(s01_axi_1_AWPROT),
        .M_AXI_AWQOS(s01_axi_1_AWQOS),
        .M_AXI_AWREADY(s01_axi_1_AWREADY),
        .M_AXI_AWSIZE(s01_axi_1_AWSIZE),
        .M_AXI_AWVALID(s01_axi_1_AWVALID),
        .M_AXI_BID(s01_axi_1_BID),
        .M_AXI_BREADY(s01_axi_1_BREADY),
        .M_AXI_BRESP(s01_axi_1_BRESP),
        .M_AXI_BVALID(s01_axi_1_BVALID),
        .M_AXI_RDATA(s01_axi_1_RDATA),
        .M_AXI_RID(s01_axi_1_RID),
        .M_AXI_RLAST(s01_axi_1_RLAST),
        .M_AXI_RREADY(s01_axi_1_RREADY),
        .M_AXI_RRESP(s01_axi_1_RRESP),
        .M_AXI_RVALID(s01_axi_1_RVALID),
        .M_AXI_WDATA(s01_axi_1_WDATA),
        .M_AXI_WLAST(s01_axi_1_WLAST),
        .M_AXI_WREADY(s01_axi_1_WREADY),
        .M_AXI_WSTRB(s01_axi_1_WSTRB),
        .M_AXI_WVALID(s01_axi_1_WVALID),
        .S_AXI_ACLK(clk_75mhz),
        .S_AXI_ARADDR(axi4_lite_m05_axi_ARADDR),
        .S_AXI_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S_AXI_ARREADY(axi4_lite_m05_axi_ARREADY),
        .S_AXI_ARVALID(axi4_lite_m05_axi_ARVALID),
        .S_AXI_AWADDR(axi4_lite_m05_axi_AWADDR),
        .S_AXI_AWREADY(axi4_lite_m05_axi_AWREADY),
        .S_AXI_AWVALID(axi4_lite_m05_axi_AWVALID),
        .S_AXI_BREADY(axi4_lite_m05_axi_BREADY),
        .S_AXI_BRESP(axi4_lite_m05_axi_BRESP),
        .S_AXI_BVALID(axi4_lite_m05_axi_BVALID),
        .S_AXI_RDATA(axi4_lite_m05_axi_RDATA),
        .S_AXI_RREADY(axi4_lite_m05_axi_RREADY),
        .S_AXI_RRESP(axi4_lite_m05_axi_RRESP),
        .S_AXI_RVALID(axi4_lite_m05_axi_RVALID),
        .S_AXI_WDATA(axi4_lite_m05_axi_WDATA),
        .S_AXI_WREADY(axi4_lite_m05_axi_WREADY),
        .S_AXI_WSTRB(axi4_lite_m05_axi_WSTRB),
        .S_AXI_WVALID(axi4_lite_m05_axi_WVALID),
        .blank_i(xlconstant_4_const),
        .blank_o(logicvc_1_blank_o),
        .d_pix_i(xlconstant_5_const),
        .d_pix_o(logicvc_1_d_pix_o),
        .e_curr_vbuff(logicvc_2_e_next_vbuff),
        .e_next_vbuff(logicvc_2_e_next_vbuff),
        .e_sw_vbuff(vbuff_dout),
        .gpi(xlconstant_6_const),
        .hsync_i(xlconstant_4_const),
        .hsync_o(logicvc_1_hsync_o),
        .interrupt(logicvc_1_interrupt),
        .pix_clk_i(xlconstant_4_const),
        .pix_clk_n_i(xlconstant_4_const),
        .pix_clk_o(logicvc_1_pix_clk_o),
        .rst(proc_sys_reset_1_bus_struct_reset),
        .vclk(clk_150mhz),
        .vsync_i(xlconstant_4_const),
        .vsync_o(logicvc_1_vsync_o));
  top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(xlconstant_1_const),
        .bus_struct_reset(proc_sys_reset_1_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clk_75mhz));
  top_proc_sys_reset_1_3 proc_sys_reset_1
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clkid1));
  top_proc_sys_reset_2_1 proc_sys_reset_2
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clkid2));
  top_proc_sys_reset_3_2 proc_sys_reset_3
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clkid3));
  top_processing_system7_1_0 processing_system7_1
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
        .FCLK_CLK0(processing_system7_1_fclk_clk0),
        .FCLK_CLK1(clkid1),
        .FCLK_CLK2(clkid2),
        .FCLK_CLK3(clkid3),
        .FCLK_RESET0_N(processing_system7_1_fclk_reset0_n),
        .GPIO_I({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .GPIO_O(processing_system7_1_gpio_o),
        .I2C1_SCL_I(processing_system7_1_iic_1_SCL_I),
        .I2C1_SCL_O(processing_system7_1_iic_1_SCL_O),
        .I2C1_SCL_T(processing_system7_1_iic_1_SCL_T),
        .I2C1_SDA_I(processing_system7_1_iic_1_SDA_I),
        .I2C1_SDA_O(processing_system7_1_iic_1_SDA_O),
        .I2C1_SDA_T(processing_system7_1_iic_1_SDA_T),
        .IRQ_F2P(xlconcat_3_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(clk_75mhz),
        .M_AXI_GP0_ARADDR(s00_axi_1_ARADDR),
        .M_AXI_GP0_ARBURST(s00_axi_1_ARBURST),
        .M_AXI_GP0_ARCACHE(s00_axi_1_ARCACHE),
        .M_AXI_GP0_ARID(s00_axi_1_ARID),
        .M_AXI_GP0_ARLEN(s00_axi_1_ARLEN),
        .M_AXI_GP0_ARLOCK(s00_axi_1_ARLOCK),
        .M_AXI_GP0_ARPROT(s00_axi_1_ARPROT),
        .M_AXI_GP0_ARQOS(s00_axi_1_ARQOS),
        .M_AXI_GP0_ARREADY(s00_axi_1_ARREADY),
        .M_AXI_GP0_ARSIZE(s00_axi_1_ARSIZE),
        .M_AXI_GP0_ARVALID(s00_axi_1_ARVALID),
        .M_AXI_GP0_AWADDR(s00_axi_1_AWADDR),
        .M_AXI_GP0_AWBURST(s00_axi_1_AWBURST),
        .M_AXI_GP0_AWCACHE(s00_axi_1_AWCACHE),
        .M_AXI_GP0_AWID(s00_axi_1_AWID),
        .M_AXI_GP0_AWLEN(s00_axi_1_AWLEN),
        .M_AXI_GP0_AWLOCK(s00_axi_1_AWLOCK),
        .M_AXI_GP0_AWPROT(s00_axi_1_AWPROT),
        .M_AXI_GP0_AWQOS(s00_axi_1_AWQOS),
        .M_AXI_GP0_AWREADY(s00_axi_1_AWREADY),
        .M_AXI_GP0_AWSIZE(s00_axi_1_AWSIZE),
        .M_AXI_GP0_AWVALID(s00_axi_1_AWVALID),
        .M_AXI_GP0_BID(s00_axi_1_BID),
        .M_AXI_GP0_BREADY(s00_axi_1_BREADY),
        .M_AXI_GP0_BRESP(s00_axi_1_BRESP),
        .M_AXI_GP0_BVALID(s00_axi_1_BVALID),
        .M_AXI_GP0_RDATA(s00_axi_1_RDATA),
        .M_AXI_GP0_RID(s00_axi_1_RID),
        .M_AXI_GP0_RLAST(s00_axi_1_RLAST),
        .M_AXI_GP0_RREADY(s00_axi_1_RREADY),
        .M_AXI_GP0_RRESP(s00_axi_1_RRESP),
        .M_AXI_GP0_RVALID(s00_axi_1_RVALID),
        .M_AXI_GP0_WDATA(s00_axi_1_WDATA),
        .M_AXI_GP0_WID(s00_axi_1_WID),
        .M_AXI_GP0_WLAST(s00_axi_1_WLAST),
        .M_AXI_GP0_WREADY(s00_axi_1_WREADY),
        .M_AXI_GP0_WSTRB(s00_axi_1_WSTRB),
        .M_AXI_GP0_WVALID(s00_axi_1_WVALID),
        .M_AXI_GP1_ACLK(clkid1),
        .M_AXI_GP1_ARADDR(processing_system7_1_M_AXI_GP1_ARADDR),
        .M_AXI_GP1_ARBURST(processing_system7_1_M_AXI_GP1_ARBURST),
        .M_AXI_GP1_ARCACHE(processing_system7_1_M_AXI_GP1_ARCACHE),
        .M_AXI_GP1_ARID(processing_system7_1_M_AXI_GP1_ARID),
        .M_AXI_GP1_ARLEN(processing_system7_1_M_AXI_GP1_ARLEN),
        .M_AXI_GP1_ARLOCK(processing_system7_1_M_AXI_GP1_ARLOCK),
        .M_AXI_GP1_ARPROT(processing_system7_1_M_AXI_GP1_ARPROT),
        .M_AXI_GP1_ARQOS(processing_system7_1_M_AXI_GP1_ARQOS),
        .M_AXI_GP1_ARREADY(processing_system7_1_M_AXI_GP1_ARREADY),
        .M_AXI_GP1_ARSIZE(processing_system7_1_M_AXI_GP1_ARSIZE),
        .M_AXI_GP1_ARVALID(processing_system7_1_M_AXI_GP1_ARVALID),
        .M_AXI_GP1_AWADDR(processing_system7_1_M_AXI_GP1_AWADDR),
        .M_AXI_GP1_AWBURST(processing_system7_1_M_AXI_GP1_AWBURST),
        .M_AXI_GP1_AWCACHE(processing_system7_1_M_AXI_GP1_AWCACHE),
        .M_AXI_GP1_AWID(processing_system7_1_M_AXI_GP1_AWID),
        .M_AXI_GP1_AWLEN(processing_system7_1_M_AXI_GP1_AWLEN),
        .M_AXI_GP1_AWLOCK(processing_system7_1_M_AXI_GP1_AWLOCK),
        .M_AXI_GP1_AWPROT(processing_system7_1_M_AXI_GP1_AWPROT),
        .M_AXI_GP1_AWQOS(processing_system7_1_M_AXI_GP1_AWQOS),
        .M_AXI_GP1_AWREADY(processing_system7_1_M_AXI_GP1_AWREADY),
        .M_AXI_GP1_AWSIZE(processing_system7_1_M_AXI_GP1_AWSIZE),
        .M_AXI_GP1_AWVALID(processing_system7_1_M_AXI_GP1_AWVALID),
        .M_AXI_GP1_BID(processing_system7_1_M_AXI_GP1_BID),
        .M_AXI_GP1_BREADY(processing_system7_1_M_AXI_GP1_BREADY),
        .M_AXI_GP1_BRESP(processing_system7_1_M_AXI_GP1_BRESP),
        .M_AXI_GP1_BVALID(processing_system7_1_M_AXI_GP1_BVALID),
        .M_AXI_GP1_RDATA(processing_system7_1_M_AXI_GP1_RDATA),
        .M_AXI_GP1_RID(processing_system7_1_M_AXI_GP1_RID),
        .M_AXI_GP1_RLAST(processing_system7_1_M_AXI_GP1_RLAST),
        .M_AXI_GP1_RREADY(processing_system7_1_M_AXI_GP1_RREADY),
        .M_AXI_GP1_RRESP(processing_system7_1_M_AXI_GP1_RRESP),
        .M_AXI_GP1_RVALID(processing_system7_1_M_AXI_GP1_RVALID),
        .M_AXI_GP1_WDATA(processing_system7_1_M_AXI_GP1_WDATA),
        .M_AXI_GP1_WID(processing_system7_1_M_AXI_GP1_WID),
        .M_AXI_GP1_WLAST(processing_system7_1_M_AXI_GP1_WLAST),
        .M_AXI_GP1_WREADY(processing_system7_1_M_AXI_GP1_WREADY),
        .M_AXI_GP1_WSTRB(processing_system7_1_M_AXI_GP1_WSTRB),
        .M_AXI_GP1_WVALID(processing_system7_1_M_AXI_GP1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(clk_150mhz),
        .S_AXI_HP0_ARADDR(axi_interconnect_1_m00_axi_ARADDR),
        .S_AXI_HP0_ARBURST(axi_interconnect_1_m00_axi_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_interconnect_1_m00_axi_ARCACHE),
        .S_AXI_HP0_ARID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_1_m00_axi_ARID}),
        .S_AXI_HP0_ARLEN(axi_interconnect_1_m00_axi_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_interconnect_1_m00_axi_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_interconnect_1_m00_axi_ARPROT),
        .S_AXI_HP0_ARQOS(axi_interconnect_1_m00_axi_ARQOS),
        .S_AXI_HP0_ARREADY(axi_interconnect_1_m00_axi_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_interconnect_1_m00_axi_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_interconnect_1_m00_axi_ARVALID),
        .S_AXI_HP0_AWADDR(axi_interconnect_1_m00_axi_AWADDR),
        .S_AXI_HP0_AWBURST(axi_interconnect_1_m00_axi_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_interconnect_1_m00_axi_AWCACHE),
        .S_AXI_HP0_AWID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_1_m00_axi_AWID}),
        .S_AXI_HP0_AWLEN(axi_interconnect_1_m00_axi_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_interconnect_1_m00_axi_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_interconnect_1_m00_axi_AWPROT),
        .S_AXI_HP0_AWQOS(axi_interconnect_1_m00_axi_AWQOS),
        .S_AXI_HP0_AWREADY(axi_interconnect_1_m00_axi_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_interconnect_1_m00_axi_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_interconnect_1_m00_axi_AWVALID),
        .S_AXI_HP0_BID(axi_interconnect_1_m00_axi_BID),
        .S_AXI_HP0_BREADY(axi_interconnect_1_m00_axi_BREADY),
        .S_AXI_HP0_BRESP(axi_interconnect_1_m00_axi_BRESP),
        .S_AXI_HP0_BVALID(axi_interconnect_1_m00_axi_BVALID),
        .S_AXI_HP0_RDATA(axi_interconnect_1_m00_axi_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(GND_1),
        .S_AXI_HP0_RID(axi_interconnect_1_m00_axi_RID),
        .S_AXI_HP0_RLAST(axi_interconnect_1_m00_axi_RLAST),
        .S_AXI_HP0_RREADY(axi_interconnect_1_m00_axi_RREADY),
        .S_AXI_HP0_RRESP(axi_interconnect_1_m00_axi_RRESP),
        .S_AXI_HP0_RVALID(axi_interconnect_1_m00_axi_RVALID),
        .S_AXI_HP0_WDATA(axi_interconnect_1_m00_axi_WDATA),
        .S_AXI_HP0_WID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_1_m00_axi_WID}),
        .S_AXI_HP0_WLAST(axi_interconnect_1_m00_axi_WLAST),
        .S_AXI_HP0_WREADY(axi_interconnect_1_m00_axi_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(GND_1),
        .S_AXI_HP0_WSTRB(axi_interconnect_1_m00_axi_WSTRB),
        .S_AXI_HP0_WVALID(axi_interconnect_1_m00_axi_WVALID),
        .S_AXI_HP1_ACLK(clkid1),
        .S_AXI_HP1_ARADDR(axi_interconnect_S_AXI_HP1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(axi_interconnect_S_AXI_HP1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(axi_interconnect_S_AXI_HP1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_S_AXI_HP1_M00_AXI_ARID}),
        .S_AXI_HP1_ARLEN(axi_interconnect_S_AXI_HP1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(axi_interconnect_S_AXI_HP1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(axi_interconnect_S_AXI_HP1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(axi_interconnect_S_AXI_HP1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(axi_interconnect_S_AXI_HP1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(axi_interconnect_S_AXI_HP1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(axi_interconnect_S_AXI_HP1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(axi_interconnect_S_AXI_HP1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_interconnect_S_AXI_HP1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_interconnect_S_AXI_HP1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_S_AXI_HP1_M00_AXI_AWID}),
        .S_AXI_HP1_AWLEN(axi_interconnect_S_AXI_HP1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_interconnect_S_AXI_HP1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_interconnect_S_AXI_HP1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_interconnect_S_AXI_HP1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_interconnect_S_AXI_HP1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_interconnect_S_AXI_HP1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_interconnect_S_AXI_HP1_M00_AXI_AWVALID),
        .S_AXI_HP1_BID(axi_interconnect_S_AXI_HP1_M00_AXI_BID),
        .S_AXI_HP1_BREADY(axi_interconnect_S_AXI_HP1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_interconnect_S_AXI_HP1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_interconnect_S_AXI_HP1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(axi_interconnect_S_AXI_HP1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(GND_1),
        .S_AXI_HP1_RID(axi_interconnect_S_AXI_HP1_M00_AXI_RID),
        .S_AXI_HP1_RLAST(axi_interconnect_S_AXI_HP1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(axi_interconnect_S_AXI_HP1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(axi_interconnect_S_AXI_HP1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(axi_interconnect_S_AXI_HP1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(axi_interconnect_S_AXI_HP1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({GND_1,GND_1,GND_1,GND_1,axi_interconnect_S_AXI_HP1_M00_AXI_WID}),
        .S_AXI_HP1_WLAST(axi_interconnect_S_AXI_HP1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_interconnect_S_AXI_HP1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(GND_1),
        .S_AXI_HP1_WSTRB(axi_interconnect_S_AXI_HP1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_interconnect_S_AXI_HP1_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(GND_1));
  top_tpg_rst_2 tpg_rst
       (.Din(xlslice_2_dout),
        .Dout(xlslice_1_dout1));
  top_tpg_rst1_1 tpg_rst1
       (.Din(xlslice_2_dout),
        .Dout(tpg_rst1_dout));
  top_tpg_util_flipflop_1_0 tpg_util_flipflop_1
       (.CE(xlconstant_3_const),
        .Clk(clk_75mhz),
        .D(util_reduced_logic_1_res),
        .Q(util_flipflop_1_q),
        .Rst(xlconstant_3_const),
        .Set(xlconstant_3_const));
  top_util_reduced_logic_1_0 util_reduced_logic_1
       (.Op1(xlconcat_2_dout),
        .Res(util_reduced_logic_1_res));
  top_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(Op1),
        .Res(util_vector_logic_1_res));
  top_v_cresample_1_0 v_cresample_1
       (.aclk(clk_150mhz),
        .aclken(xlconstant_1_const),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axis_video_tdata(v_cresample_1_video_out_TDATA),
        .m_axis_video_tlast(v_cresample_1_video_out_TLAST),
        .m_axis_video_tready(v_cresample_1_video_out_TREADY),
        .m_axis_video_tuser(v_cresample_1_video_out_TUSER),
        .m_axis_video_tvalid(v_cresample_1_video_out_TVALID),
        .s_axi_aclk(clk_75mhz),
        .s_axi_aclken(xlconstant_1_const),
        .s_axi_araddr(axi_interconnect_2_m02_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_2_m02_axi_ARREADY),
        .s_axi_arvalid(axi_interconnect_2_m02_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_2_m02_axi_AWADDR),
        .s_axi_awready(axi_interconnect_2_m02_axi_AWREADY),
        .s_axi_awvalid(axi_interconnect_2_m02_axi_AWVALID),
        .s_axi_bready(axi_interconnect_2_m02_axi_BREADY),
        .s_axi_bresp(axi_interconnect_2_m02_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_2_m02_axi_BVALID),
        .s_axi_rdata(axi_interconnect_2_m02_axi_RDATA),
        .s_axi_rready(axi_interconnect_2_m02_axi_RREADY),
        .s_axi_rresp(axi_interconnect_2_m02_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_2_m02_axi_RVALID),
        .s_axi_wdata(axi_interconnect_2_m02_axi_WDATA),
        .s_axi_wready(axi_interconnect_2_m02_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_2_m02_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_2_m02_axi_WVALID),
        .s_axis_video_tdata(v_tpg_1_video_out_TDATA),
        .s_axis_video_tlast(v_tpg_1_video_out_TLAST),
        .s_axis_video_tready(v_tpg_1_video_out_TREADY),
        .s_axis_video_tuser(v_tpg_1_video_out_TUSER),
        .s_axis_video_tvalid(v_tpg_1_video_out_TVALID));
  top_v_tc_1_0 v_tc_1
       (.active_video_in(fmc_imageon_hdmi_in_1_xsvi_active_video_o),
        .active_video_out(v_tc_1_active_video_out),
        .clk(vsrc_sel_1_video_clk),
        .clken(xlconstant_1_const),
        .det_clken(xlconstant_1_const),
        .fsync_in(xlconstant_zero_const),
        .gen_clken(xlconstant_1_const),
        .hblank_in(fmc_imageon_hdmi_in_1_xsvi_hblank_o),
        .hsync_out(v_tc_1_hsync_out),
        .resetn(xlconstant_1_const),
        .s_axi_aclk(clk_75mhz),
        .s_axi_aclken(xlconstant_1_const),
        .s_axi_araddr(axi_interconnect_2_m00_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_2_m00_axi_ARREADY),
        .s_axi_arvalid(axi_interconnect_2_m00_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_2_m00_axi_AWADDR),
        .s_axi_awready(axi_interconnect_2_m00_axi_AWREADY),
        .s_axi_awvalid(axi_interconnect_2_m00_axi_AWVALID),
        .s_axi_bready(axi_interconnect_2_m00_axi_BREADY),
        .s_axi_bresp(axi_interconnect_2_m00_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_2_m00_axi_BVALID),
        .s_axi_rdata(axi_interconnect_2_m00_axi_RDATA),
        .s_axi_rready(axi_interconnect_2_m00_axi_RREADY),
        .s_axi_rresp(axi_interconnect_2_m00_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_2_m00_axi_RVALID),
        .s_axi_wdata(axi_interconnect_2_m00_axi_WDATA),
        .s_axi_wready(axi_interconnect_2_m00_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_2_m00_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_2_m00_axi_WVALID),
        .vblank_in(fmc_imageon_hdmi_in_1_xsvi_vblank_o),
        .vsync_out(v_tc_1_vsync_out));
  top_v_tpg_1_0 v_tpg_1
       (.aclk(clk_150mhz),
        .aclken(xlconstant_1_const),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axis_video_tdata(v_tpg_1_video_out_TDATA),
        .m_axis_video_tlast(v_tpg_1_video_out_TLAST),
        .m_axis_video_tready(v_tpg_1_video_out_TREADY),
        .m_axis_video_tuser(v_tpg_1_video_out_TUSER),
        .m_axis_video_tvalid(v_tpg_1_video_out_TVALID),
        .s_axi_aclk(clk_75mhz),
        .s_axi_aclken(xlconstant_1_const),
        .s_axi_araddr(axi_interconnect_2_m04_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_2_m04_axi_ARREADY),
        .s_axi_arvalid(axi_interconnect_2_m04_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_2_m04_axi_AWADDR),
        .s_axi_awready(axi_interconnect_2_m04_axi_AWREADY),
        .s_axi_awvalid(axi_interconnect_2_m04_axi_AWVALID),
        .s_axi_bready(axi_interconnect_2_m04_axi_BREADY),
        .s_axi_bresp(axi_interconnect_2_m04_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_2_m04_axi_BVALID),
        .s_axi_rdata(axi_interconnect_2_m04_axi_RDATA),
        .s_axi_rready(axi_interconnect_2_m04_axi_RREADY),
        .s_axi_rresp(axi_interconnect_2_m04_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_2_m04_axi_RVALID),
        .s_axi_wdata(axi_interconnect_2_m04_axi_WDATA),
        .s_axi_wready(axi_interconnect_2_m04_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_2_m04_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_2_m04_axi_WVALID),
        .s_axis_video_tdata(xlconcat_1_dout),
        .s_axis_video_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .s_axis_video_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .s_axis_video_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .s_axis_video_tvalid(v_vid_in_axi4s_1_video_out_TVALID));
  top_v_vid_in_axi4s_1_0 v_vid_in_axi4s_1
       (.aclk(clk_150mhz),
        .aclken(xlconstant_1_const),
        .aresetn(util_flipflop_1_q),
        .axis_enable(xlconstant_1_const),
        .m_axis_video_tdata(v_vid_in_axi4s_1_m_axis_video_tdata),
        .m_axis_video_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_1_video_out_TVALID),
        .rst(proc_sys_reset_1_bus_struct_reset),
        .vid_active_video(vsrc_sel_1_de),
        .vid_data(fmc_imageon_hdmi_in_1_xsvi_video_data_o),
        .vid_field_id(GND_1),
        .vid_hblank(vsrc_sel_1_hsync),
        .vid_hsync(vsrc_sel_1_hsync),
        .vid_io_in_ce(VCC_1),
        .vid_io_in_clk(vsrc_sel_1_video_clk),
        .vid_vblank(vsrc_sel_1_vsync),
        .vid_vsync(vsrc_sel_1_vsync));
  top_v_ycrcb2rgb_1_0 v_ycrcb2rgb_1
       (.aclk(clk_150mhz),
        .aclken(xlconstant_1_const),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axis_video_tdata(v_ycrcb2rgb_1_video_out_TDATA),
        .m_axis_video_tlast(v_ycrcb2rgb_1_video_out_TLAST),
        .m_axis_video_tready(v_ycrcb2rgb_1_video_out_TREADY),
        .m_axis_video_tuser_sof(v_ycrcb2rgb_1_video_out_TUSER),
        .m_axis_video_tvalid(v_ycrcb2rgb_1_video_out_TVALID),
        .s_axi_aclk(clk_75mhz),
        .s_axi_aclken(xlconstant_1_const),
        .s_axi_araddr(axi_interconnect_2_m03_axi_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_2_m03_axi_ARREADY),
        .s_axi_arvalid(axi_interconnect_2_m03_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_2_m03_axi_AWADDR),
        .s_axi_awready(axi_interconnect_2_m03_axi_AWREADY),
        .s_axi_awvalid(axi_interconnect_2_m03_axi_AWVALID),
        .s_axi_bready(axi_interconnect_2_m03_axi_BREADY),
        .s_axi_bresp(axi_interconnect_2_m03_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_2_m03_axi_BVALID),
        .s_axi_rdata(axi_interconnect_2_m03_axi_RDATA),
        .s_axi_rready(axi_interconnect_2_m03_axi_RREADY),
        .s_axi_rresp(axi_interconnect_2_m03_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_2_m03_axi_RVALID),
        .s_axi_wdata(axi_interconnect_2_m03_axi_WDATA),
        .s_axi_wready(axi_interconnect_2_m03_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_2_m03_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_2_m03_axi_WVALID),
        .s_axis_video_tdata(v_cresample_1_video_out_TDATA),
        .s_axis_video_tlast(v_cresample_1_video_out_TLAST),
        .s_axis_video_tready(v_cresample_1_video_out_TREADY),
        .s_axis_video_tuser_sof(v_cresample_1_video_out_TUSER),
        .s_axis_video_tvalid(v_cresample_1_video_out_TVALID));
  top_vbuff_1 vbuff
       (.In0(xlconstant_zero_const),
        .In1(axi_vdma_1_s2mm_fsync_out),
        .In2(axi_vdma_1_s2mm_fsync_out),
        .dout(vbuff_dout));
  top_vid_sel_0 vid_sel
       (.Din(xlslice_2_dout),
        .Dout(xlslice_1_dout));
  top_vsrc_sel_1_0 vsrc_sel_1
       (.de(vsrc_sel_1_de),
        .de_1(v_tc_1_active_video_out),
        .de_2(fmc_imageon_hdmi_in_1_xsvi_active_video_o),
        .hsync(vsrc_sel_1_hsync),
        .hsync_1(v_tc_1_hsync_out),
        .hsync_2(fmc_imageon_hdmi_in_1_xsvi_hblank_o),
        .video_clk(vsrc_sel_1_video_clk),
        .video_clk_1(video_clk_1),
        .video_clk_2(clk_1),
        .video_sel(xlslice_1_dout),
        .vsync(vsrc_sel_1_vsync),
        .vsync_1(v_tc_1_vsync_out),
        .vsync_2(fmc_imageon_hdmi_in_1_xsvi_vblank_o));
  top_xlconcat_1_3 xlconcat_1
       (.In0(xlslice_15downto8_dout),
        .In1(xlslice_7downto0_dout),
        .dout(xlconcat_1_dout));
  top_xlconcat_2_2 xlconcat_2
       (.In0(xlslice_1_dout1),
        .In1(axi_vdma_1_s2mm_prmry_reset_out_n),
        .In2(proc_sys_reset_0_interconnect_aresetn),
        .dout(xlconcat_2_dout));
  top_xlconcat_3_0 xlconcat_3
       (.In0(logicvc_1_interrupt),
        .In1(axi_vdma_1_s2mm_introut),
        .In2(util_vector_logic_1_res),
        .In3(datamover_0_mm2s_introut),
        .In4(datamover_0_s2mm_introut),
        .dout(xlconcat_3_dout));
  top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  top_xlconstant_3_3 xlconstant_3
       (.dout(xlconstant_3_const));
  top_xlconstant_4_4 xlconstant_4
       (.dout(xlconstant_4_const));
  top_xlconstant_5_5 xlconstant_5
       (.dout(xlconstant_5_const));
  top_xlconstant_6_6 xlconstant_6
       (.dout(xlconstant_6_const));
  top_xlconstant_one_0 xlconstant_one
       (.dout(xlconstant_1_const));
  top_xlconstant_zero_1 xlconstant_zero
       (.dout(xlconstant_zero_const));
  top_xlslice_1_8 xlslice_1
       (.Din(logicvc_2_e_next_vbuff),
        .Dout(xlslice_1_dout2));
  top_xlslice_15downto8_3 xlslice_15downto8
       (.Din(v_vid_in_axi4s_1_m_axis_video_tdata),
        .Dout(xlslice_15downto8_dout));
  top_xlslice_2_9 xlslice_2
       (.Din(processing_system7_1_gpio_o),
        .Dout(xlslice_2_dout));
  top_xlslice_7downto0_4 xlslice_7downto0
       (.Din(v_vid_in_axi4s_1_m_axis_video_tdata),
        .Dout(xlslice_7downto0_dout));
endmodule

module top_axi4_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [1:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire GND_1;
  wire axi4_0_ACLK_net;
  wire [0:0]axi4_0_ARESETN_net;
  wire [31:0]axi4_0_to_s00_couplers_AWADDR;
  wire [1:0]axi4_0_to_s00_couplers_AWBURST;
  wire [3:0]axi4_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi4_0_to_s00_couplers_AWLEN;
  wire [2:0]axi4_0_to_s00_couplers_AWPROT;
  wire axi4_0_to_s00_couplers_AWREADY;
  wire [2:0]axi4_0_to_s00_couplers_AWSIZE;
  wire axi4_0_to_s00_couplers_AWVALID;
  wire axi4_0_to_s00_couplers_BREADY;
  wire [1:0]axi4_0_to_s00_couplers_BRESP;
  wire axi4_0_to_s00_couplers_BVALID;
  wire [63:0]axi4_0_to_s00_couplers_WDATA;
  wire axi4_0_to_s00_couplers_WLAST;
  wire axi4_0_to_s00_couplers_WREADY;
  wire [7:0]axi4_0_to_s00_couplers_WSTRB;
  wire axi4_0_to_s00_couplers_WVALID;
  wire [31:0]axi4_0_to_s01_couplers_ARADDR;
  wire [1:0]axi4_0_to_s01_couplers_ARBURST;
  wire [3:0]axi4_0_to_s01_couplers_ARCACHE;
  wire [0:0]axi4_0_to_s01_couplers_ARID;
  wire [7:0]axi4_0_to_s01_couplers_ARLEN;
  wire [0:0]axi4_0_to_s01_couplers_ARLOCK;
  wire [2:0]axi4_0_to_s01_couplers_ARPROT;
  wire [3:0]axi4_0_to_s01_couplers_ARQOS;
  wire axi4_0_to_s01_couplers_ARREADY;
  wire [2:0]axi4_0_to_s01_couplers_ARSIZE;
  wire axi4_0_to_s01_couplers_ARVALID;
  wire [31:0]axi4_0_to_s01_couplers_AWADDR;
  wire [1:0]axi4_0_to_s01_couplers_AWBURST;
  wire [3:0]axi4_0_to_s01_couplers_AWCACHE;
  wire [0:0]axi4_0_to_s01_couplers_AWID;
  wire [7:0]axi4_0_to_s01_couplers_AWLEN;
  wire [0:0]axi4_0_to_s01_couplers_AWLOCK;
  wire [2:0]axi4_0_to_s01_couplers_AWPROT;
  wire [3:0]axi4_0_to_s01_couplers_AWQOS;
  wire axi4_0_to_s01_couplers_AWREADY;
  wire [2:0]axi4_0_to_s01_couplers_AWSIZE;
  wire axi4_0_to_s01_couplers_AWVALID;
  wire [0:0]axi4_0_to_s01_couplers_BID;
  wire axi4_0_to_s01_couplers_BREADY;
  wire [1:0]axi4_0_to_s01_couplers_BRESP;
  wire axi4_0_to_s01_couplers_BVALID;
  wire [63:0]axi4_0_to_s01_couplers_RDATA;
  wire [0:0]axi4_0_to_s01_couplers_RID;
  wire axi4_0_to_s01_couplers_RLAST;
  wire axi4_0_to_s01_couplers_RREADY;
  wire [1:0]axi4_0_to_s01_couplers_RRESP;
  wire axi4_0_to_s01_couplers_RVALID;
  wire [63:0]axi4_0_to_s01_couplers_WDATA;
  wire axi4_0_to_s01_couplers_WLAST;
  wire axi4_0_to_s01_couplers_WREADY;
  wire [7:0]axi4_0_to_s01_couplers_WSTRB;
  wire axi4_0_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi4_0_ARADDR;
  wire [1:0]m00_couplers_to_axi4_0_ARBURST;
  wire [3:0]m00_couplers_to_axi4_0_ARCACHE;
  wire [1:0]m00_couplers_to_axi4_0_ARID;
  wire [3:0]m00_couplers_to_axi4_0_ARLEN;
  wire [1:0]m00_couplers_to_axi4_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi4_0_ARPROT;
  wire [3:0]m00_couplers_to_axi4_0_ARQOS;
  wire m00_couplers_to_axi4_0_ARREADY;
  wire [2:0]m00_couplers_to_axi4_0_ARSIZE;
  wire m00_couplers_to_axi4_0_ARVALID;
  wire [31:0]m00_couplers_to_axi4_0_AWADDR;
  wire [1:0]m00_couplers_to_axi4_0_AWBURST;
  wire [3:0]m00_couplers_to_axi4_0_AWCACHE;
  wire [1:0]m00_couplers_to_axi4_0_AWID;
  wire [3:0]m00_couplers_to_axi4_0_AWLEN;
  wire [1:0]m00_couplers_to_axi4_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi4_0_AWPROT;
  wire [3:0]m00_couplers_to_axi4_0_AWQOS;
  wire m00_couplers_to_axi4_0_AWREADY;
  wire [2:0]m00_couplers_to_axi4_0_AWSIZE;
  wire m00_couplers_to_axi4_0_AWVALID;
  wire [1:0]m00_couplers_to_axi4_0_BID;
  wire m00_couplers_to_axi4_0_BREADY;
  wire [1:0]m00_couplers_to_axi4_0_BRESP;
  wire m00_couplers_to_axi4_0_BVALID;
  wire [63:0]m00_couplers_to_axi4_0_RDATA;
  wire [1:0]m00_couplers_to_axi4_0_RID;
  wire m00_couplers_to_axi4_0_RLAST;
  wire m00_couplers_to_axi4_0_RREADY;
  wire [1:0]m00_couplers_to_axi4_0_RRESP;
  wire m00_couplers_to_axi4_0_RVALID;
  wire [63:0]m00_couplers_to_axi4_0_WDATA;
  wire [1:0]m00_couplers_to_axi4_0_WID;
  wire m00_couplers_to_axi4_0_WLAST;
  wire m00_couplers_to_axi4_0_WREADY;
  wire [7:0]m00_couplers_to_axi4_0_WSTRB;
  wire m00_couplers_to_axi4_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [0:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [3:2]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [3:2]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [127:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi4_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi4_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi4_0_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi4_0_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi4_0_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi4_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi4_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi4_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi4_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi4_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi4_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi4_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi4_0_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi4_0_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi4_0_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi4_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi4_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi4_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi4_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi4_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi4_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi4_0_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi4_0_WDATA;
  assign M00_AXI_wid[1:0] = m00_couplers_to_axi4_0_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi4_0_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi4_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi4_0_WVALID;
  assign S00_AXI_awready = axi4_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi4_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi4_0_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi4_0_to_s00_couplers_WREADY;
  assign S01_AXI_arready = axi4_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi4_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = axi4_0_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi4_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi4_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi4_0_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = axi4_0_to_s01_couplers_RID;
  assign S01_AXI_rlast = axi4_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi4_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi4_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi4_0_to_s01_couplers_WREADY;
  assign axi4_0_ACLK_net = ACLK;
  assign axi4_0_ARESETN_net = ARESETN[0];
  assign axi4_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi4_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi4_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi4_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi4_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi4_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi4_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi4_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi4_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi4_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi4_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi4_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi4_0_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi4_0_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi4_0_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi4_0_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign axi4_0_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi4_0_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign axi4_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi4_0_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi4_0_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi4_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi4_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi4_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi4_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi4_0_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign axi4_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi4_0_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi4_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi4_0_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi4_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi4_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi4_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi4_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi4_0_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi4_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi4_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi4_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi4_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi4_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi4_0_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi4_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi4_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi4_0_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi4_0_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi4_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi4_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi4_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi4_0_WREADY = M00_AXI_wready;
  GND GND
       (.G(GND_1));
  m00_couplers_imp_GDEZ4S m00_couplers
       (.M_ACLK(axi4_0_ACLK_net),
        .M_ARESETN(axi4_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi4_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi4_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi4_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi4_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi4_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi4_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi4_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi4_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi4_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi4_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi4_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi4_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi4_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi4_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi4_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi4_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi4_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi4_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi4_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi4_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi4_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi4_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi4_0_BID),
        .M_AXI_bready(m00_couplers_to_axi4_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi4_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi4_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi4_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi4_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi4_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi4_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi4_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi4_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi4_0_WDATA),
        .M_AXI_wid(m00_couplers_to_axi4_0_WID),
        .M_AXI_wlast(m00_couplers_to_axi4_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi4_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi4_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi4_0_WVALID),
        .S_ACLK(axi4_0_ACLK_net),
        .S_ARESETN(axi4_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_14J47DY s00_couplers
       (.M_ACLK(axi4_0_ACLK_net),
        .M_ARESETN(axi4_0_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi4_0_ACLK_net),
        .S_ARESETN(axi4_0_ARESETN_net),
        .S_AXI_awaddr(axi4_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi4_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi4_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi4_0_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi4_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi4_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi4_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi4_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi4_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi4_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi4_0_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi4_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi4_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi4_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi4_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi4_0_to_s00_couplers_WVALID));
  s01_couplers_imp_M2B55V s01_couplers
       (.M_ACLK(axi4_0_ACLK_net),
        .M_ARESETN(axi4_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID[2]),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID[2]),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi4_0_ACLK_net),
        .S_ARESETN(axi4_0_ARESETN_net),
        .S_AXI_araddr(axi4_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi4_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi4_0_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi4_0_to_s01_couplers_ARID),
        .S_AXI_arlen(axi4_0_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi4_0_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi4_0_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi4_0_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi4_0_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi4_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi4_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi4_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi4_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi4_0_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi4_0_to_s01_couplers_AWID),
        .S_AXI_awlen(axi4_0_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi4_0_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi4_0_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi4_0_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi4_0_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi4_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi4_0_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi4_0_to_s01_couplers_BID),
        .S_AXI_bready(axi4_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi4_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi4_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi4_0_to_s01_couplers_RDATA),
        .S_AXI_rid(axi4_0_to_s01_couplers_RID),
        .S_AXI_rlast(axi4_0_to_s01_couplers_RLAST),
        .S_AXI_rready(axi4_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi4_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi4_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi4_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi4_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi4_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi4_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi4_0_to_s01_couplers_WVALID));
  top_xbar_1 xbar
       (.aclk(axi4_0_ACLK_net),
        .aresetn(axi4_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,GND_1,GND_1}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arid({GND_1,s01_couplers_to_xbar_ARID,GND_1,GND_1}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,GND_1}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,GND_1,GND_1,GND_1}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[0]}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,GND_1,GND_1,GND_1}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,GND_1}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({GND_1,s01_couplers_to_xbar_AWID,GND_1,GND_1}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[1:0]}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[63:0]}),
        .s_axi_rid({s01_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[1:0]}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[0]}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,GND_1}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[1:0]}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[0]}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module top_axi4_lite_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [8:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [8:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [8:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [8:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi4_lite_ACLK_net;
  wire [0:0]axi4_lite_ARESETN_net;
  wire [31:0]axi4_lite_to_s00_couplers_ARADDR;
  wire [1:0]axi4_lite_to_s00_couplers_ARBURST;
  wire [3:0]axi4_lite_to_s00_couplers_ARCACHE;
  wire [11:0]axi4_lite_to_s00_couplers_ARID;
  wire [3:0]axi4_lite_to_s00_couplers_ARLEN;
  wire [1:0]axi4_lite_to_s00_couplers_ARLOCK;
  wire [2:0]axi4_lite_to_s00_couplers_ARPROT;
  wire [3:0]axi4_lite_to_s00_couplers_ARQOS;
  wire axi4_lite_to_s00_couplers_ARREADY;
  wire [2:0]axi4_lite_to_s00_couplers_ARSIZE;
  wire axi4_lite_to_s00_couplers_ARVALID;
  wire [31:0]axi4_lite_to_s00_couplers_AWADDR;
  wire [1:0]axi4_lite_to_s00_couplers_AWBURST;
  wire [3:0]axi4_lite_to_s00_couplers_AWCACHE;
  wire [11:0]axi4_lite_to_s00_couplers_AWID;
  wire [3:0]axi4_lite_to_s00_couplers_AWLEN;
  wire [1:0]axi4_lite_to_s00_couplers_AWLOCK;
  wire [2:0]axi4_lite_to_s00_couplers_AWPROT;
  wire [3:0]axi4_lite_to_s00_couplers_AWQOS;
  wire axi4_lite_to_s00_couplers_AWREADY;
  wire [2:0]axi4_lite_to_s00_couplers_AWSIZE;
  wire axi4_lite_to_s00_couplers_AWVALID;
  wire [11:0]axi4_lite_to_s00_couplers_BID;
  wire axi4_lite_to_s00_couplers_BREADY;
  wire [1:0]axi4_lite_to_s00_couplers_BRESP;
  wire axi4_lite_to_s00_couplers_BVALID;
  wire [31:0]axi4_lite_to_s00_couplers_RDATA;
  wire [11:0]axi4_lite_to_s00_couplers_RID;
  wire axi4_lite_to_s00_couplers_RLAST;
  wire axi4_lite_to_s00_couplers_RREADY;
  wire [1:0]axi4_lite_to_s00_couplers_RRESP;
  wire axi4_lite_to_s00_couplers_RVALID;
  wire [31:0]axi4_lite_to_s00_couplers_WDATA;
  wire [11:0]axi4_lite_to_s00_couplers_WID;
  wire axi4_lite_to_s00_couplers_WLAST;
  wire axi4_lite_to_s00_couplers_WREADY;
  wire [3:0]axi4_lite_to_s00_couplers_WSTRB;
  wire axi4_lite_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m00_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m00_couplers_to_axi4_lite_ARVALID;
  wire [8:0]m00_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m00_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m00_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m00_couplers_to_axi4_lite_BREADY;
  wire [1:0]m00_couplers_to_axi4_lite_BRESP;
  wire [0:0]m00_couplers_to_axi4_lite_BVALID;
  wire [31:0]m00_couplers_to_axi4_lite_RDATA;
  wire [0:0]m00_couplers_to_axi4_lite_RREADY;
  wire [1:0]m00_couplers_to_axi4_lite_RRESP;
  wire [0:0]m00_couplers_to_axi4_lite_RVALID;
  wire [31:0]m00_couplers_to_axi4_lite_WDATA;
  wire [0:0]m00_couplers_to_axi4_lite_WREADY;
  wire [3:0]m00_couplers_to_axi4_lite_WSTRB;
  wire [0:0]m00_couplers_to_axi4_lite_WVALID;
  wire [8:0]m01_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m01_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m01_couplers_to_axi4_lite_ARVALID;
  wire [8:0]m01_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m01_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m01_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m01_couplers_to_axi4_lite_BREADY;
  wire [1:0]m01_couplers_to_axi4_lite_BRESP;
  wire [0:0]m01_couplers_to_axi4_lite_BVALID;
  wire [31:0]m01_couplers_to_axi4_lite_RDATA;
  wire [0:0]m01_couplers_to_axi4_lite_RREADY;
  wire [1:0]m01_couplers_to_axi4_lite_RRESP;
  wire [0:0]m01_couplers_to_axi4_lite_RVALID;
  wire [31:0]m01_couplers_to_axi4_lite_WDATA;
  wire [0:0]m01_couplers_to_axi4_lite_WREADY;
  wire [0:0]m01_couplers_to_axi4_lite_WVALID;
  wire [8:0]m02_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m02_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m02_couplers_to_axi4_lite_ARVALID;
  wire [8:0]m02_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m02_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m02_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m02_couplers_to_axi4_lite_BREADY;
  wire [1:0]m02_couplers_to_axi4_lite_BRESP;
  wire [0:0]m02_couplers_to_axi4_lite_BVALID;
  wire [31:0]m02_couplers_to_axi4_lite_RDATA;
  wire [0:0]m02_couplers_to_axi4_lite_RREADY;
  wire [1:0]m02_couplers_to_axi4_lite_RRESP;
  wire [0:0]m02_couplers_to_axi4_lite_RVALID;
  wire [31:0]m02_couplers_to_axi4_lite_WDATA;
  wire [0:0]m02_couplers_to_axi4_lite_WREADY;
  wire [3:0]m02_couplers_to_axi4_lite_WSTRB;
  wire [0:0]m02_couplers_to_axi4_lite_WVALID;
  wire [8:0]m03_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m03_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m03_couplers_to_axi4_lite_ARVALID;
  wire [8:0]m03_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m03_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m03_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m03_couplers_to_axi4_lite_BREADY;
  wire [1:0]m03_couplers_to_axi4_lite_BRESP;
  wire [0:0]m03_couplers_to_axi4_lite_BVALID;
  wire [31:0]m03_couplers_to_axi4_lite_RDATA;
  wire [0:0]m03_couplers_to_axi4_lite_RREADY;
  wire [1:0]m03_couplers_to_axi4_lite_RRESP;
  wire [0:0]m03_couplers_to_axi4_lite_RVALID;
  wire [31:0]m03_couplers_to_axi4_lite_WDATA;
  wire [0:0]m03_couplers_to_axi4_lite_WREADY;
  wire [3:0]m03_couplers_to_axi4_lite_WSTRB;
  wire [0:0]m03_couplers_to_axi4_lite_WVALID;
  wire [8:0]m04_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m04_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m04_couplers_to_axi4_lite_ARVALID;
  wire [8:0]m04_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m04_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m04_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m04_couplers_to_axi4_lite_BREADY;
  wire [1:0]m04_couplers_to_axi4_lite_BRESP;
  wire [0:0]m04_couplers_to_axi4_lite_BVALID;
  wire [31:0]m04_couplers_to_axi4_lite_RDATA;
  wire [0:0]m04_couplers_to_axi4_lite_RREADY;
  wire [1:0]m04_couplers_to_axi4_lite_RRESP;
  wire [0:0]m04_couplers_to_axi4_lite_RVALID;
  wire [31:0]m04_couplers_to_axi4_lite_WDATA;
  wire [0:0]m04_couplers_to_axi4_lite_WREADY;
  wire [3:0]m04_couplers_to_axi4_lite_WSTRB;
  wire [0:0]m04_couplers_to_axi4_lite_WVALID;
  wire [31:0]m05_couplers_to_axi4_lite_ARADDR;
  wire [0:0]m05_couplers_to_axi4_lite_ARREADY;
  wire [0:0]m05_couplers_to_axi4_lite_ARVALID;
  wire [31:0]m05_couplers_to_axi4_lite_AWADDR;
  wire [0:0]m05_couplers_to_axi4_lite_AWREADY;
  wire [0:0]m05_couplers_to_axi4_lite_AWVALID;
  wire [0:0]m05_couplers_to_axi4_lite_BREADY;
  wire [1:0]m05_couplers_to_axi4_lite_BRESP;
  wire [0:0]m05_couplers_to_axi4_lite_BVALID;
  wire [31:0]m05_couplers_to_axi4_lite_RDATA;
  wire [0:0]m05_couplers_to_axi4_lite_RREADY;
  wire [1:0]m05_couplers_to_axi4_lite_RRESP;
  wire [0:0]m05_couplers_to_axi4_lite_RVALID;
  wire [31:0]m05_couplers_to_axi4_lite_WDATA;
  wire [0:0]m05_couplers_to_axi4_lite_WREADY;
  wire [3:0]m05_couplers_to_axi4_lite_WSTRB;
  wire [0:0]m05_couplers_to_axi4_lite_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [23:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[8:0] = m00_couplers_to_axi4_lite_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi4_lite_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_axi4_lite_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi4_lite_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi4_lite_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi4_lite_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi4_lite_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi4_lite_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi4_lite_WVALID;
  assign M01_AXI_araddr[8:0] = m01_couplers_to_axi4_lite_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi4_lite_ARVALID;
  assign M01_AXI_awaddr[8:0] = m01_couplers_to_axi4_lite_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi4_lite_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi4_lite_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi4_lite_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi4_lite_WDATA;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi4_lite_WVALID;
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi4_lite_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi4_lite_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi4_lite_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi4_lite_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi4_lite_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi4_lite_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi4_lite_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi4_lite_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi4_lite_WVALID;
  assign M03_AXI_araddr[8:0] = m03_couplers_to_axi4_lite_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi4_lite_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_axi4_lite_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi4_lite_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi4_lite_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi4_lite_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi4_lite_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi4_lite_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi4_lite_WVALID;
  assign M04_AXI_araddr[8:0] = m04_couplers_to_axi4_lite_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi4_lite_ARVALID;
  assign M04_AXI_awaddr[8:0] = m04_couplers_to_axi4_lite_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi4_lite_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi4_lite_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi4_lite_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi4_lite_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi4_lite_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi4_lite_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi4_lite_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi4_lite_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi4_lite_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi4_lite_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi4_lite_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi4_lite_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi4_lite_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi4_lite_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi4_lite_WVALID;
  assign S00_AXI_arready = axi4_lite_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi4_lite_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi4_lite_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi4_lite_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi4_lite_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi4_lite_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi4_lite_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi4_lite_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi4_lite_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi4_lite_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi4_lite_to_s00_couplers_WREADY;
  assign axi4_lite_ACLK_net = ACLK;
  assign axi4_lite_ARESETN_net = ARESETN[0];
  assign axi4_lite_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi4_lite_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi4_lite_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi4_lite_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi4_lite_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi4_lite_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi4_lite_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi4_lite_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi4_lite_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi4_lite_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi4_lite_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi4_lite_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi4_lite_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi4_lite_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi4_lite_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi4_lite_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi4_lite_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi4_lite_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi4_lite_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi4_lite_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi4_lite_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi4_lite_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi4_lite_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi4_lite_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi4_lite_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi4_lite_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi4_lite_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi4_lite_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi4_lite_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi4_lite_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi4_lite_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi4_lite_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi4_lite_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi4_lite_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi4_lite_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi4_lite_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi4_lite_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi4_lite_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi4_lite_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi4_lite_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi4_lite_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi4_lite_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi4_lite_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi4_lite_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi4_lite_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi4_lite_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi4_lite_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi4_lite_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi4_lite_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi4_lite_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi4_lite_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi4_lite_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi4_lite_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi4_lite_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi4_lite_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi4_lite_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi4_lite_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi4_lite_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi4_lite_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi4_lite_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi4_lite_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi4_lite_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi4_lite_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi4_lite_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi4_lite_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi4_lite_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi4_lite_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi4_lite_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi4_lite_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi4_lite_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi4_lite_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi4_lite_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi4_lite_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi4_lite_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi4_lite_WREADY = M05_AXI_wready[0];
  m00_couplers_imp_PVTEPF m00_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m00_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m00_couplers_to_axi4_lite_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi4_lite_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_ZRA7G6 m01_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m01_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m01_couplers_to_axi4_lite_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[40:32]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[40:32]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_GY5TRS m02_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m02_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m02_couplers_to_axi4_lite_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi4_lite_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[72:64]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[72:64]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1QAL859 m03_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m03_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m03_couplers_to_axi4_lite_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi4_lite_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR[104:96]),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR[104:96]),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_17TLI5H m04_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m04_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m04_couplers_to_axi4_lite_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi4_lite_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR[136:128]),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR[136:128]),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_HVACO0 m05_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi4_lite_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi4_lite_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi4_lite_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi4_lite_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi4_lite_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi4_lite_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi4_lite_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi4_lite_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi4_lite_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi4_lite_RDATA),
        .M_AXI_rready(m05_couplers_to_axi4_lite_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi4_lite_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi4_lite_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi4_lite_WDATA),
        .M_AXI_wready(m05_couplers_to_axi4_lite_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi4_lite_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi4_lite_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_1VSPVUX s00_couplers
       (.M_ACLK(axi4_lite_ACLK_net),
        .M_ARESETN(axi4_lite_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi4_lite_ACLK_net),
        .S_ARESETN(axi4_lite_ARESETN_net),
        .S_AXI_araddr(axi4_lite_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi4_lite_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi4_lite_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi4_lite_to_s00_couplers_ARID),
        .S_AXI_arlen(axi4_lite_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi4_lite_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi4_lite_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi4_lite_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi4_lite_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi4_lite_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi4_lite_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi4_lite_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi4_lite_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi4_lite_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi4_lite_to_s00_couplers_AWID),
        .S_AXI_awlen(axi4_lite_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi4_lite_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi4_lite_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi4_lite_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi4_lite_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi4_lite_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi4_lite_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi4_lite_to_s00_couplers_BID),
        .S_AXI_bready(axi4_lite_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi4_lite_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi4_lite_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi4_lite_to_s00_couplers_RDATA),
        .S_AXI_rid(axi4_lite_to_s00_couplers_RID),
        .S_AXI_rlast(axi4_lite_to_s00_couplers_RLAST),
        .S_AXI_rready(axi4_lite_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi4_lite_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi4_lite_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi4_lite_to_s00_couplers_WDATA),
        .S_AXI_wid(axi4_lite_to_s00_couplers_WID),
        .S_AXI_wlast(axi4_lite_to_s00_couplers_WLAST),
        .S_AXI_wready(axi4_lite_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi4_lite_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi4_lite_to_s00_couplers_WVALID));
  top_xbar_0 xbar
       (.aclk(axi4_lite_ACLK_net),
        .aresetn(axi4_lite_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[7:4],xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module top_axi_interconnect_M_AXI_GP1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [12:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [12:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [9:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [9:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_M_AXI_GP1_ACLK_net;
  wire [0:0]axi_interconnect_M_AXI_GP1_ARESETN_net;
  wire [31:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARQOS;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWQOS;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_BID;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_BRESP;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_RID;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_RLAST;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_RRESP;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_WID;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_WLAST;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_M_AXI_GP1_to_s00_couplers_WSTRB;
  wire axi_interconnect_M_AXI_GP1_to_s00_couplers_WVALID;
  wire [12:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID;
  wire [12:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_BRESP;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_RDATA;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_RRESP;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_WDATA;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_M_AXI_GP1_WSTRB;
  wire m00_couplers_to_axi_interconnect_M_AXI_GP1_WVALID;
  wire [9:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID;
  wire [9:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_BRESP;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_RDATA;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_RRESP;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_M_AXI_GP1_WDATA;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_WREADY;
  wire m01_couplers_to_axi_interconnect_M_AXI_GP1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[12:0] = m00_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID;
  assign M00_AXI_awaddr[12:0] = m00_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_M_AXI_GP1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_M_AXI_GP1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_M_AXI_GP1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_M_AXI_GP1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_M_AXI_GP1_WVALID;
  assign M01_AXI_araddr[9:0] = m01_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID;
  assign M01_AXI_awaddr[9:0] = m01_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_M_AXI_GP1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_M_AXI_GP1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_M_AXI_GP1_WDATA;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_M_AXI_GP1_WVALID;
  assign S00_AXI_arready = axi_interconnect_M_AXI_GP1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_M_AXI_GP1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_M_AXI_GP1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_M_AXI_GP1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_M_AXI_GP1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_M_AXI_GP1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_M_AXI_GP1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_M_AXI_GP1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_M_AXI_GP1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_M_AXI_GP1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_M_AXI_GP1_to_s00_couplers_WREADY;
  assign axi_interconnect_M_AXI_GP1_ACLK_net = ACLK;
  assign axi_interconnect_M_AXI_GP1_ARESETN_net = ARESETN[0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_M_AXI_GP1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_M_AXI_GP1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_M_AXI_GP1_WREADY = M01_AXI_wready;
  m00_couplers_imp_MIMTZ0 m00_couplers
       (.M_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .M_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_M_AXI_GP1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_M_AXI_GP1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_M_AXI_GP1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_M_AXI_GP1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_M_AXI_GP1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_M_AXI_GP1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_M_AXI_GP1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_M_AXI_GP1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_M_AXI_GP1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_M_AXI_GP1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_M_AXI_GP1_WVALID),
        .S_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .S_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[12:0]),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[12:0]),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_131CERD m01_couplers
       (.M_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .M_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_M_AXI_GP1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_M_AXI_GP1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_M_AXI_GP1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_M_AXI_GP1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_M_AXI_GP1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_M_AXI_GP1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_M_AXI_GP1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_M_AXI_GP1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_M_AXI_GP1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_M_AXI_GP1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_M_AXI_GP1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_M_AXI_GP1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_M_AXI_GP1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_M_AXI_GP1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_M_AXI_GP1_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_M_AXI_GP1_WVALID),
        .S_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .S_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[41:32]),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[41:32]),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_1WVBE9Y s00_couplers
       (.M_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .M_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_M_AXI_GP1_ACLK_net),
        .S_ARESETN(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_M_AXI_GP1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_M_AXI_GP1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_M_AXI_GP1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_M_AXI_GP1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_M_AXI_GP1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_M_AXI_GP1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_M_AXI_GP1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_M_AXI_GP1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_M_AXI_GP1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_M_AXI_GP1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_M_AXI_GP1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_M_AXI_GP1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_M_AXI_GP1_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_M_AXI_GP1_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_M_AXI_GP1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_M_AXI_GP1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_M_AXI_GP1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_M_AXI_GP1_to_s00_couplers_WVALID));
  top_xbar_2 xbar
       (.aclk(axi_interconnect_M_AXI_GP1_ACLK_net),
        .aresetn(axi_interconnect_M_AXI_GP1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module top_axi_interconnect_S_AXI_HP1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [1:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [63:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input [0:0]S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [63:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire GND_1;
  wire axi_interconnect_S_AXI_HP1_ACLK_net;
  wire [0:0]axi_interconnect_S_AXI_HP1_ARESETN_net;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARLEN;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARPROT;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWLEN;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWPROT;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_AWVALID;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_BRESP;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_RDATA;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_RLAST;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_RRESP;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_WDATA;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_WLAST;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_S_AXI_HP1_to_s00_couplers_WSTRB;
  wire axi_interconnect_S_AXI_HP1_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARCACHE;
  wire [7:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARLEN;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARPROT;
  wire axi_interconnect_S_AXI_HP1_to_s01_couplers_ARREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_ARSIZE;
  wire axi_interconnect_S_AXI_HP1_to_s01_couplers_ARVALID;
  wire [63:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_RDATA;
  wire axi_interconnect_S_AXI_HP1_to_s01_couplers_RLAST;
  wire axi_interconnect_S_AXI_HP1_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s01_couplers_RRESP;
  wire axi_interconnect_S_AXI_HP1_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWADDR;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWBURST;
  wire [3:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWCACHE;
  wire [7:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWLEN;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWPROT;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_AWREADY;
  wire [2:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_AWSIZE;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_AWVALID;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_BREADY;
  wire [1:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_BRESP;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_BVALID;
  wire [63:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_WDATA;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_WLAST;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_WREADY;
  wire [7:0]axi_interconnect_S_AXI_HP1_to_s02_couplers_WSTRB;
  wire axi_interconnect_S_AXI_HP1_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARID;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARQOS;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_ARSIZE;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWID;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWQOS;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_AWSIZE;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_AWVALID;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_BID;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_BRESP;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_RDATA;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_RID;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_RLAST;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_RRESP;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_WDATA;
  wire [1:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_WID;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_WLAST;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_S_AXI_HP1_WSTRB;
  wire m00_couplers_to_axi_interconnect_S_AXI_HP1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_S_AXI_HP1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_S_AXI_HP1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_S_AXI_HP1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_S_AXI_HP1_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_WDATA;
  assign M00_AXI_wid[1:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_S_AXI_HP1_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_S_AXI_HP1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_S_AXI_HP1_WVALID;
  assign S00_AXI_arready = axi_interconnect_S_AXI_HP1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_S_AXI_HP1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_S_AXI_HP1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_S_AXI_HP1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_S_AXI_HP1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_S_AXI_HP1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_S_AXI_HP1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_S_AXI_HP1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_S_AXI_HP1_to_s00_couplers_WREADY;
  assign S01_AXI_arready = axi_interconnect_S_AXI_HP1_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[63:0] = axi_interconnect_S_AXI_HP1_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_interconnect_S_AXI_HP1_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_S_AXI_HP1_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_S_AXI_HP1_to_s01_couplers_RVALID;
  assign S02_AXI_awready = axi_interconnect_S_AXI_HP1_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_interconnect_S_AXI_HP1_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_S_AXI_HP1_to_s02_couplers_BVALID;
  assign S02_AXI_wready = axi_interconnect_S_AXI_HP1_to_s02_couplers_WREADY;
  assign axi_interconnect_S_AXI_HP1_ACLK_net = ACLK;
  assign axi_interconnect_S_AXI_HP1_ARESETN_net = ARESETN[0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_S_AXI_HP1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_S_AXI_HP1_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_WDATA = S02_AXI_wdata[63:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_WSTRB = S02_AXI_wstrb[7:0];
  assign axi_interconnect_S_AXI_HP1_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_S_AXI_HP1_WREADY = M00_AXI_wready;
  GND GND
       (.G(GND_1));
  m00_couplers_imp_3QUDFX m00_couplers
       (.M_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .M_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_S_AXI_HP1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_S_AXI_HP1_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_S_AXI_HP1_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_S_AXI_HP1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_S_AXI_HP1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_S_AXI_HP1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_S_AXI_HP1_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_S_AXI_HP1_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_S_AXI_HP1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_S_AXI_HP1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_S_AXI_HP1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_S_AXI_HP1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_S_AXI_HP1_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_interconnect_S_AXI_HP1_WID),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_S_AXI_HP1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_S_AXI_HP1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_S_AXI_HP1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_S_AXI_HP1_WVALID),
        .S_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .S_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_19MGGQF s00_couplers
       (.M_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .M_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .S_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_S_AXI_HP1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_S_AXI_HP1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_S_AXI_HP1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_S_AXI_HP1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_S_AXI_HP1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_S_AXI_HP1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_S_AXI_HP1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_S_AXI_HP1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_S_AXI_HP1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_S_AXI_HP1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_S_AXI_HP1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_S_AXI_HP1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_S_AXI_HP1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_S_AXI_HP1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_S_AXI_HP1_to_s00_couplers_WVALID));
  s01_couplers_imp_XUC94I s01_couplers
       (.M_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .M_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .S_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_S_AXI_HP1_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_interconnect_S_AXI_HP1_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_S_AXI_HP1_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_S_AXI_HP1_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_S_AXI_HP1_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_S_AXI_HP1_to_s01_couplers_RVALID));
  s02_couplers_imp_1IFRU2K s02_couplers
       (.M_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .M_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_S_AXI_HP1_ACLK_net),
        .S_ARESETN(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .S_AXI_awaddr(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_S_AXI_HP1_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_S_AXI_HP1_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_S_AXI_HP1_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_S_AXI_HP1_to_s02_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_S_AXI_HP1_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_S_AXI_HP1_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_S_AXI_HP1_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_S_AXI_HP1_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_S_AXI_HP1_to_s02_couplers_WVALID));
  top_xbar_3 xbar
       (.aclk(axi_interconnect_S_AXI_HP1_ACLK_net),
        .aresetn(axi_interconnect_S_AXI_HP1_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({GND_1,GND_1,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({GND_1,GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arlen({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({GND_1,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({GND_1,GND_1,GND_1,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({GND_1,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,GND_1,GND_1,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,GND_1,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,GND_1,GND_1,GND_1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,GND_1,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,GND_1,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({GND_1,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,GND_1,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,GND_1,s00_couplers_to_xbar_WVALID}));
endmodule
