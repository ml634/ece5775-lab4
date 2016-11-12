-= SD card boot image =-

Platform: zedboard_osd
Application: webcam_hw.elf

1. Copy the contents of this directory to an SD card
2. Set boot mode to SD
3. Insert SD card and turn board on

*******************************************************************************

IMPORTANT: Certain monitors may not be able to adjust to the clock frequency of
this platform. If you experience that problem, copy the fix_clock.elf file
(located in the boot directory of this platform) into the SD Card. After
booting and before you execute the application, run this utility and the
monitor should be able to display the correct HDMI output. 

*******************************************************************************
