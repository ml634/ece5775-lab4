APPSOURCES = arraycopy.cpp 
EXECUTABLE = zc702_axis_io.elf

VERBOSE = #-verbose
PLATFORM = ../../../zc702_axis_io

SDSCC_FLAGS = \
-sds-pf ${PLATFORM} \
${VERBOSE} 

CC = sds++ ${SDSCC_FLAGS}

IDIRS = -I. 
LDIRS = 
LLIBS = -lzc702_axis_io
OLEVEL = -ggdb

CFLAGS = -Wall ${OLEVEL} -c ${IDIRS} 
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = ${OLEVEL} ${LDIRS} ${LLIBS} 

SOURCES := $(patsubst %,./%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.cpp=.o)
DEPS := $(OBJECTS:.o=.d)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} ${LFLAGS} -o $@  

-include ${DEPS}

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS}

ultraclean: clean
	${RM} -rf _sds sd_card ${EXECUTABLE}.bit
