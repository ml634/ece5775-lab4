# Makefile for ECE5775 project
# Andrew Palmer (ajp294)
# 8 November 2016

# OpenCV specific compile variables
OPENCV_FLAGS = `pkg-config --cflags opencv`
OPENCV_LIBS = `pkg-config --libs opencv`

harrisExample:
	@echo "Compiling harris corner detector example"
	g++ $(OPENCV_FLAGS) $(OPENCV_LIBS) harrisExample.cpp -o harrisExample

robotFilter:
	@echo "Compiling robot image filter program"
	g++ $(OPENCV_FLAGS) $(OPENCV_LIBS) robotFilter.cpp -o robotFilter

.PHONY: harrisExample robotFilter
