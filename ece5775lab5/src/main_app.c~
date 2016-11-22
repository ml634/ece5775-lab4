/*
* File:				Multi-Robot Localization on Heterogenous Platform (SW version)
* Author:			Moonyoung Lee (ml634@cornell.edu)
* Adapted from:
*					main.cpp by
* Author:			Mohit Sravya
* Target Hardward:  ZC702 to RPi/ Arduino (Galileo/Edison)
*
* (1) Server Client Setup
* (2) Visual Tracking Algorithm
* (3) Send Command to Robot
*
*/
//========================================================
// Initialization
//========================================================

// Include directories 
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <arpa/inet.h>


#include <sys/mman.h>
#include <unistd.h>
#include <pthread.h>
#include <linux/fb.h>
#include <getopt.h>
#include "zc702hdmi/hwi_export.h"

#include "img_filters.h"
#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP  { clock_end = sds_clock_counter(); printf("elapsed time %llu \n", clock_end-clock_start); clock_start = sds_clock_counter();  }

//#include "hls_video.h"

// networking global variables
struct sockaddr_in server, client;
int socket_desc, socket_robot1, socket_robot2, client_addr;

char isNetworkAlive;
char serialDataOverNetwork[1];
#define SERVER_IP "192.168.137.123"
#define PORT 8888

// FINDME: add local memory values here for center of mass, corners, etc to calculate orientation and robot commands


void motion_demo_processing( unsigned int in_buffer, unsigned int out_buffer) // add the parameters here as well to pass to main execution loop
{
	

TIME_STAMP_INIT
	img_process( (unsigned int *)in_buffer, (unsigned int *)out_buffer); // more parameters here for values passed from img_process
TIME_STAMP

}

char init_network()
{
	// attempt to open socket
	socket_desc = socket(AF_INET, SOCK_STREAM, 0);
	if (socket_desc == -1) {
		printf("Couldn't create Socket.\n");
		return 0;
	}

	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_family = AF_INET;
	server.sin_port = htons(PORT);

	// connect to remote server
	if (bind(socket_desc, (struct sockaddr *)&server, sizeof(server)) < 0) {
		printf("Connection failed.\n");
		return 0;
	}

	printf("Network connected.\n");
        listen(socket_desc, 2);

        client_addr = sizeof(struct sockaddr_in);

	socket_robot1 = accept(socket_desc, (struct sockaddr*)&client, (socklen_t*)&client_addr );
        if( socket_robot1 < 0 ) {
		printf("Couldn't connect to robot1.\n");
		return 0;
        }
	
	printf("Connected to robot 1.\n");

	socket_robot2 = accept(socket_desc, (struct sockaddr*)&client, (socklen_t*)&client_addr );
        if( socket_robot2 < 0 ) {
		printf("Couldn't connect to robot2.\n");
		return 0;
        }
	
	printf("Connected to robot 2.\n");

	return 1;
}

void sendCommand(char *serialDataOverNetwork, int socket)
{
	if ( isNetworkAlive &&  ( send ( socket, serialDataOverNetwork, strlen(serialDataOverNetwork), 0) < 0 ) ) {
		printf("Send failed.\n");
	}
	else if ( !isNetworkAlive ) {
		// if network somehow failed, then initiate again
		isNetworkAlive = init_network();
	}

	return;
}

void *thread_sw_sync()
{
	unsigned int output_frame[MAX_BUFFER];
	unsigned int input_frame[MAX_BUFFER];
	unsigned int virt_output_frame[MAX_BUFFER];
	unsigned int virt_input_frame[MAX_BUFFER];
	int i = 0;
	int offset = 0;

	// starting indices
	unsigned int map_len = NUMPADCOLS * NUMROWS * sizeof(int);
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	int infrm_index = 2 ,outfrm_index = 0, accel_prev_index=0, accel_in_index = 1, accel_out_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		output_frame[i] = gLayerBase[DISPLAY_LAYER] + offset;
		input_frame[i] = gLayerBase[INPUT_LAYER] + offset;
		offset += ibufferoffset;
		virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)input_frame[i]);
		virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)output_frame[i]);
		virt_input_frame[i] = (unsigned int)virtual_addr_in;
                virt_output_frame[i] = (unsigned int)virtual_addr_out;
#ifndef SDS_NOMMAP
                sds_mmap((void *)input_frame[i], map_len, virtual_addr_in);
                sds_mmap((void *)output_frame[i], map_len, virtual_addr_out);
#endif
	}
	close (fd);
	setCVC_TPGBuffer(outfrm_index,infrm_index);
	motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index]);
	while(1)
	{
		outfrm_index++;
		outfrm_index %= MAX_BUFFER;

		infrm_index++;
		infrm_index  %= MAX_BUFFER;

		setCVC_TPGBuffer(outfrm_index,infrm_index);

		accel_prev_index = accel_in_index;
		accel_in_index++;
		accel_in_index  %= MAX_BUFFER;

		accel_out_index++;
		accel_out_index  %= MAX_BUFFER;

		motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index]);

	} 
	// do the following on exit
        // sds_munmap(virtual_addr_in);
        // sds_munmap(virtual_addr_out);
	// munmap((void *)virtual_addr_out, map_len);
	// munmap((void *)virtual_addr_in, map_len);
}


int main(int argc, char **argv)
{
	printf("\n START CODE \n");
	init_all();
	thread_sw_sync(); // Sample code - loop forever, exit with Ctrl-C

	//isNetworkAlive = init_network();
    //serialDataOverNetwork[0] = (char)3;

    /*    while(1) 
	{ 

		sendCommand(serialDataOverNetwork, socket_robot1);
		printf("\n sent packet to robot1 \n");
		sendCommand(serialDataOverNetwork, socket_robot2);
		printf("\n sent packet to robot2 \n");
 
	}*/
	
	return EXIT_SUCCESS;
}

