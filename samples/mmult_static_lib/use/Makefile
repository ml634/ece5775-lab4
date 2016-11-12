APPSOURCES = mmult.cpp
EXECUTABLE = mmult.elf

CC = arm-xilinx-linux-gnueabi-g++

CFLAGS = -Wall -O3 -c -I./include
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
LFLAGS = -O3 -L./lib -lmmult_accel -lpthread

OBJECTS := $(APPSOURCES:.cpp=.o)
DEPS := $(OBJECTS:.o=.d)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} ${LFLAGS}  -o $@

-include ${DEPS}

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 
