APPSOURCES = webcam_demo.cpp draw.cpp drm.cpp 
EXECUTABLE = webcam_hw.elf

SDSPF = zc702_osd

#BIN_DIR := $(dir $(shell which sdscc))
#PLATFORM := $(BIN_DIR)../samples/platforms/${SDSPF}

SDSFLAGS = -sds-pf ${SDSPF} -dmclkid 3 \
	-sds-hw draw_something draw.cpp -clkid 3 -sds-end

CC = sds++ ${SDSFLAGS}

CFLAGS = -Wall -c -I../src

LFLAGS = -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_videoio -lopencv_flann -lpthread -lv4l2 -lv4l1 -lv4lconvert -ldl -lrt -ldrm 

OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} ${LFLAGS} -o $@ 

%.o: ../src/%.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
