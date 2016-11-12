all: librtl_arraycopy.a

# Note: subsequent calls to sdslib on a library append hardware functions
librtl_arraycopy.a: \
	arraycopy.h \
	arraycopy_aximm.cpp \
	arraycopy_aximm.fcnmap.xml \
	arraycopy_aximm.params.xml \
	arraycopy_axis.cpp \
	arraycopy_axis.fcnmap.xml \
	arraycopy_axis.params.xml

	sdslib -lib librtl_arraycopy.a \
	  arraycopy_aximm arraycopy_aximm.cpp \
	  -vlnv xilinx.com:xd:arraycopy_aximm:1.0 \
	  -ip-repo repo \
	  -ip-map arraycopy_aximm.fcnmap.xml \
	  -ip-params arraycopy_aximm.params.xml

	sdslib -lib librtl_arraycopy.a \
	  arraycopy_axis arraycopy_axis.cpp \
	  -vlnv xilinx.com:xd:arraycopy_axis:1.0 \
	  -ip-repo repo \
	  -ip-map arraycopy_axis.fcnmap.xml \
	  -ip-params arraycopy_axis.params.xml

standalone/librtl_arraycopy.a: \
	arraycopy.h \
	arraycopy_aximm.cpp \
	arraycopy_aximm.fcnmap.xml \
	arraycopy_aximm.params.xml \
	arraycopy_axis.cpp \
	arraycopy_axis.fcnmap.xml \
	arraycopy_axis.params.xml

	mkdir standalone
	sdslib -lib librtl_arraycopy.a -target-os standalone \
	  arraycopy_aximm arraycopy_aximm.cpp \
	  -vlnv xilinx.com:xd:arraycopy_aximm:1.0 \
	  -ip-repo repo \
	  -ip-map arraycopy_aximm.fcnmap.xml \
	  -ip-params arraycopy_aximm.params.xml

	sdslib -lib librtl_arraycopy.a -target-os standalone \
	  arraycopy_axis arraycopy_axis.cpp \
	  -vlnv xilinx.com:xd:arraycopy_axis:1.0 \
	  -ip-repo repo \
	  -ip-map arraycopy_axis.fcnmap.xml \
	  -ip-params arraycopy_axis.params.xml

clean:
	rm -rf librtl_arraycopy.a standalone

ultraclean: clean
	rm -rf _sds
