################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 

C_SRCS += ../hw/manr.c \
 ../hw/sobel_filter.cpp \
 ../hw/rgb_pad2ycbcr.c \
 ../hw/img_filters.c \
 ../hw/median_filter.cpp \
 ../hw/median_filter_time.cpp \
 ../hw/corner_detect.cpp

OBJS += ./hw/manr.o \
  ./hw/sobel_filter.o \
  ./hw/rgb_pad2ycbcr.o \
  ./hw/img_filters.o \
  ./hw/median_filter.o \
  ./hw/median_filter_time.o \
  ./hw/corner_detect.o

C_DEPS += ./hw/img_filters.d 

SDIFLAGS += -sdi-pf zc702_hdmi \
	-sdi-hw rgb_pad2ycbcr rgb_pad2ycbcr.c -clkid 1 -sdi-end \
	-sdi-hw median_filter median_filter.cpp -clkid 1 -sdi-end \
	-sdi-hw median_filter_time median_filter_time.cpp -clkid 1 -sdi-end \
	-sdi-hw corner_detect corner_detect.cpp -clkid 1 -sdi-end \
	-dmclkid 1

#	-sdi-hw sobel_filter sobel_filter.cpp -clkid 1 -sdi-end \
#	-sdi-hw manr manr.c -clkid 1 -sdi-end \
#	-sdi-hw median_filter median_filter.cpp -clkid 1 -sdi-end \

hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	sdi -Wall -O3  -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


