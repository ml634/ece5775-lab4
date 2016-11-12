.PHONY: all

all: libzybo_axis_io.a

libzybo_axis_io.a: pf_read.cpp  pf_write.cpp zybo_axis_io.fcnmap.xml zybo_axis_io.params.xml
	sdslib -lib libzybo_axis_io.a \
	  pf_read pf_read.cpp \
	  -vlnv xilinx.com:ip:axis_data_fifo:1.1 \
	  -ip-map zybo_axis_io.fcnmap.xml \
	  -ip-params zybo_axis_io.params.xml
	sdslib -lib libzybo_axis_io.a \
	  pf_write pf_write.cpp \
	  -vlnv xilinx.com:ip:axis_data_fifo:1.1 \
	  -ip-map zybo_axis_io.fcnmap.xml \
	  -ip-params zybo_axis_io.params.xml

clean:
	rm -rf libzybo_axis_io.a _sds


