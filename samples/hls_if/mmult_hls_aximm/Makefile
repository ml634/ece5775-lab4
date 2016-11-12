APPSOURCES = main.cpp mmult.cpp 
EXECUTABLE = mmult_hls_aximm.elf

PLATFORM = -sds-pf zc702
VERBOSE  = #-verbose
OLEVEL   = -O3
SDSFLAGS = \
${PLATFORM} \
-sds-hw mmult mmult.cpp -sds-end \
${VERBOSE}

CPP    = sds++ $(SDSFLAGS)
CFLAGS = ${OLEVEL} -Wall -c
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = ${OLEVEL} 

OBJECTS := $(APPSOURCES:.cpp=.o)
DEPS := $(OBJECTS:.o=.d)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CPP} ${LFLAGS} ${OBJECTS} -o $@ 

-include ${DEPS}

%.o: %.cpp
	${CPP} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} ${EXECUTABLE}.bit ${EXECUTABLE}
	${RM} -rf _sds sd_card
