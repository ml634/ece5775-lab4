APPSOURCES = bytestrm_dwordproc.cpp bytestrm_dwordproc_test.cpp 
EXECUTABLE = bytestrm_dwordproc.elf

CROSS_COMPILE = arm-xilinx-linux-gnueabi-
AR = ${CROSS_COMPILE}ar
LD = ${CROSS_COMPILE}ld
SDSFLAGS = -sds-pf zc702 \
-sds-hw bytestrm_dwordproc bytestrm_dwordproc.cpp -clkid 2 -sds-end

CC = sds++

IDIRS = -I.
LDIRS =
LLIBS =
CFLAGS = -Wall -O3 -c ${IDIRS} ${SDSFLAGS}
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = -O3 ${LDIRS} ${LLIBS} ${SDSFLAGS}

SOURCES := $(patsubst %,../%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.cpp=.o)
DEPS := $(OBJECTS:.o=.d)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} ${OBJECTS} -o $@

-include ${DEPS}

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} -rf _sds *.bit sd_card
