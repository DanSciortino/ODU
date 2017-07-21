# ODU ECE 484W
# Command line image processing for make file
# Setting compiler flag for g++
CC=g++



histogram: Histogram.cpp
	$(CC) Histogram.cpp -o histogram

bmp: bmp.cpp
	$(CC) bmp.cpp -o bmp

overlay: bmpOVERLAY.CPP
	$(CC) bmpOVERLAY.CPP -o overlay

bmpOVERLAY: bmpOVERLAY.CPP
	$(CC) bmpOVERLAY.CPP -o bmpOVERLAY


clean:
	rm bmp histogram overlay
