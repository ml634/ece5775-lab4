APPSOURCES = main.cpp mmult.cpp madd.cpp 
EXECUTABLE = mmultadd.elf

PLATFORM = zybo
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult mmult.cpp -sds-end \
	-sds-hw madd madd.cpp -sds-end

CC = sds++ ${SDSFLAGS}

CFLAGS = -O3 -c
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = -O3

OBJECTS := $(APPSOURCES:.cpp=.o)
DEPS := $(OBJECTS:.o=.d)

.PHONY: all clean apfclean

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} $^ -o $@ 

-include ${DEPS}

%.o: %.cpp
	${CC} ${CFLAGS} $^ -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
