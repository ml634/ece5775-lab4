Webcan demo application
=======================

* To build the hardware accelerated application:

	cd Hw
	make

This creates a directory called sd_card which can be copied to an sd card to
boot linux on a zc702_osd or zedboard_osd platform (ZC702 or ZedBoard with
On Screen Display)


* To build a software only application:

	cd Sw
	make

This creates a file called webcam_sw.elf which can be copied onto the SD
card generated in the previous step to run a software only version for
comparison with the hardware accelerated version


* To run the application:

Insert the SD card with the required boot files and executables into the
zc702 or ZedBoard. Make sure there is monior connected to the HDMI output
and a webcam connected to the USB input port. Also, set the board to boot
in SD mode.

IMPORTANT: If you are running the demo on the zedboard_osd platform and your
monitor does not get a correct signal from the board, please copy the
fix_clock.elf executable located in the boot directory of the platform to your
sd card. Execute this program right after booting the board.

At the command prompt on the putty or sdk window:
	/media/card/webcam_hw.elf

For for the SW-only version
	/media/card/webcam_sw.elf 

