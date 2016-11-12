.PHONY: all

all: libzc702_axis_io.a

libzc702_axis_io.a: pf_read.cpp  pf_write.cpp zc702_axis_io.fcnmap.xml zc702_axis_io.params.xml
	sdslib -lib libzc702_axis_io.a \
	  pf_read pf_read.cpp \
	  -vlnv xilinx.com:ip:axis_data_fifo:1.1 \
	  -ip-map zc702_axis_io.fcnmap.xml \
	  -ip-params zc702_axis_io.params.xml
	sdslib -lib libzc702_axis_io.a \
	  pf_write pf_write.cpp \
	  -vlnv xilinx.com:ip:axis_data_fifo:1.1 \
	  -ip-map zc702_axis_io.fcnmap.xml \
	  -ip-params zc702_axis_io.params.xml

clean:
	rm -rf libzc702_axis_io.a _sds


