APPSOURCES = arraycopy.cpp 
EXECUTABLE = zc702_acp.elf

VERBOSE = #-verbose
PLATFORM = ../../../zc702_acp

SDSCC_FLAGS = \
-sds-pf ${PLATFORM} \
-sds-hw arraycopy arraycopy.cpp -sds-end \
${VERBOSE} 

CC = sds++ ${SDSCC_FLAGS}

IDIRS = -I. 
LDIRS = 
LLIBS = 
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
