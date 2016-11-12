#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/a.g.bc ${1+"$@"}
