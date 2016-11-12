set C_TypeInfoList {{ 
"img_process" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"rgb_data_in": [[], {"array": [ {"scalar": "int"}, [2211840]]}] }, {"rgb_data_out": [[], {"array": [ {"scalar": "int"}, [2211840]]}] }, {"isobelInvert": [[], {"scalar": "int"}] }, {"iminsobelSensitivity": [[], {"scalar": "int"}] }, {"imaxsobelSensitivity": [[], {"scalar": "int"}] }],["0"],""],
 "0": [ "line_buffer", [[], {"array": [ {"scalar": "unsigned char"}, [3,2048]]}],""]
}}
set moduleName img_process
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {img_process}
set C_modelType { void 0 }
set C_modelArgList { 
	{ rgb_data_in int 32 regular {fifo 0 volatile }  }
	{ rgb_data_out int 32 regular {fifo 1 volatile }  }
	{ isobelInvert int 32 regular  }
	{ iminsobelSensitivity int 32 regular  }
	{ imaxsobelSensitivity int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb_data_in", "interface" : "fifo", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rgb_data_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2211839,"step" : 1}]}]}]} , 
 	{ "Name" : "rgb_data_out", "interface" : "fifo", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rgb_data_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2211839,"step" : 1}]}]}]} , 
 	{ "Name" : "isobelInvert", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "isobelInvert","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "iminsobelSensitivity", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "iminsobelSensitivity","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "imaxsobelSensitivity", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imaxsobelSensitivity","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rgb_data_in_dout sc_in sc_lv 32 signal 0 } 
	{ rgb_data_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb_data_in_read sc_out sc_logic 1 signal 0 } 
	{ rgb_data_out_din sc_out sc_lv 32 signal 1 } 
	{ rgb_data_out_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb_data_out_write sc_out sc_logic 1 signal 1 } 
	{ isobelInvert sc_in sc_lv 32 signal 2 } 
	{ iminsobelSensitivity sc_in sc_lv 32 signal 3 } 
	{ imaxsobelSensitivity sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rgb_data_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb_data_in", "role": "dout" }} , 
 	{ "name": "rgb_data_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_data_in", "role": "empty_n" }} , 
 	{ "name": "rgb_data_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_data_in", "role": "read" }} , 
 	{ "name": "rgb_data_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb_data_out", "role": "din" }} , 
 	{ "name": "rgb_data_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_data_out", "role": "full_n" }} , 
 	{ "name": "rgb_data_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_data_out", "role": "write" }} , 
 	{ "name": "isobelInvert", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "isobelInvert", "role": "default" }} , 
 	{ "name": "iminsobelSensitivity", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iminsobelSensitivity", "role": "default" }} , 
 	{ "name": "imaxsobelSensitivity", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imaxsobelSensitivity", "role": "default" }}  ]}
set Spec2ImplPortList { 
	rgb_data_in { ap_fifo {  { rgb_data_in_dout fifo_data 0 32 }  { rgb_data_in_empty_n fifo_status 0 1 }  { rgb_data_in_read fifo_update 1 1 } } }
	rgb_data_out { ap_fifo {  { rgb_data_out_din fifo_data 1 32 }  { rgb_data_out_full_n fifo_status 0 1 }  { rgb_data_out_write fifo_update 1 1 } } }
	isobelInvert { ap_none {  { isobelInvert in_data 0 32 } } }
	iminsobelSensitivity { ap_none {  { iminsobelSensitivity in_data 0 32 } } }
	imaxsobelSensitivity { ap_none {  { imaxsobelSensitivity in_data 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	rgb_data_in { fifo_read 6144 no_conditional }
	rgb_data_out { fifo_write 8298 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
