APPSOURCES = mmult.cpp mmult_accel.cpp 
EXECUTABLE = mmult.elf

SWONLY = #-rebuild-sw-only
PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} ${SWONLY} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end \
	-poll-mode 1

CC = sds++ -DAPF ${SDSFLAGS}

CFLAGS = -Wall -O3 -c
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = -O3 -apm -target-os standalone

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
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
