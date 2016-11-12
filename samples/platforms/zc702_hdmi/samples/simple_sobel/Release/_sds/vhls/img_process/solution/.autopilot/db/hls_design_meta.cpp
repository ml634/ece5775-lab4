#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("rgb_data_in_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 6144),
	Port_Property("rgb_data_in_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 6144),
	Port_Property("rgb_data_in_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 6144),
	Port_Property("rgb_data_out_din", 32, hls_out, 1, "ap_fifo", "fifo_data", 8298),
	Port_Property("rgb_data_out_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 8298),
	Port_Property("rgb_data_out_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 8298),
	Port_Property("isobelInvert", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("iminsobelSensitivity", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("imaxsobelSensitivity", 32, hls_in, 4, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "img_process";
