

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../hw/median_char_filter_pass.cpp \
 ../hw/rgb_pad2ycbcr.c \
 ../hw/ycbcr2rgb_pad.c \
 ../hw/img_filters.c \
 ../hw/centerOfMass.c \
 ../hw/corner_detect.cpp

#../hw/sobel_filter_pass.cpp \
#  ../hw/sobel_filter.cpp \
#  ../hw/diff_image.c \
#  ../hw/combo_image.c \

OBJS += ./hw/median_char_filter_pass.o \
 ./hw/rgb_pad2ycbcr.o \
 ./hw/ycbcr2rgb_pad.o \
 ./hw/centerOfMass.o \
 ./hw/corner_detect.o \
 ./hw/img_filters.o

C_DEPS += ./hw/img_filters.d

# ./hw/sobel_filter_pass.o \
#  ./hw/sobel_filter.o \
#  ./hw/diff_image.o \
#  ./hw/combo_image.o \

# FINDME: clock frequency info
# -clkid 1 has a target clock frequency of 142 MHz
# can use 2 for a target frequency of 100MHz if need be
SDSFLAGS += -sds-pf $(PLATFORM) \
	-sds-hw median_char_filter_pass median_char_filter_pass.cpp -clkid 1 -sds-end \
	-sds-hw rgb_pad2ycbcr rgb_pad2ycbcr.c -clkid 1 -sds-end \
	-sds-hw ycbcr2rgb_pad ycbcr2rgb_pad.c -clkid 1 -sds-end \
	-sds-hw centerOfMass centerOfMass.c -clkid 1 -sds-end \
	-sds-hw corner_detect corner_detect.cpp -clkid 1 -sds-end \
	-dmclkid 1

# 	-sds-hw sobel_filter sobel_filter.cpp -clkid 1 -sds-end \
# 	-sds-hw sobel_filter_pass sobel_filter_pass.cpp -clkid 1 -sds-end \
# 	-sds-hw diff_image diff_image.c -clkid 1 -sds-end \
# 	-sds-hw combo_image combo_image.c -clkid 1 -sds-end \

hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	sdscc -Wall -O3  -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



