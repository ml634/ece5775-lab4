################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../hw/rgb_pad2ycbcr.c \
 ../hw/ycbcr2rgb_pad.c \
 ../hw/img_filters.c \
 ../hw/centerOfMass.cpp 

OBJS += ./hw/rgb_pad2ycbcr.o \
 ./hw/ycbcr2rgb_pad.o \
 ./hw/img_filters.o \
 ./hw/centerOfMass.o

C_DEPS += ./hw/img_filters.d

SDSFLAGS += -sds-pf $(PLATFORM) \
	-sds-hw rgb_pad2ycbcr rgb_pad2ycbcr.c -clkid 2 -sds-end \
	-sds-hw ycbcr2rgb_pad ycbcr2rgb_pad.c -clkid 2 -sds-end \
	-sds-hw centerOfMass centerOfMass.cpp -clkid 2 -sds-end \
	-dmclkid 1

hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	sdscc -Wall -O3  -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



