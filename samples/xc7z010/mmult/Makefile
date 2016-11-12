APPSOURCES = main.cpp mmult.cpp 
EXECUTABLE = mmult_xc7z010.elf

PLATFORM = -sds-pf zybo
VERBOSE  = #-verbose
OLEVEL   = -O3
SDSFLAGS = \
${PLATFORM} \
-sds-hw mmult mmult.cpp -sds-end \
${VERBOSE}

CPP    = sds++ $(SDSFLAGS)
CFLAGS = -Wall ${OLEVEL} -c
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = ${OLEVEL} -poll-mode 1

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
