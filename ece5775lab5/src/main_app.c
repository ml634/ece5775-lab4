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
#include "apf_lib.h"
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

//3 objects COM and x,y
#define COM_COUNT 6

#define arrivedTolerance    100
#define robotDriveTolerance 50


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


//frame_com_[0,1] = redCOM
//frame_com_[2,3] = blueCOM
//frame_com_[4,5] = greenCOM

//robot1 = red; robot2 = blue
void robotCommand(unsigned int frame_com_array) {

	unsigned int robot1COM[2], robot2COM[2], goalCOM[2];
	signed int deltaXrobot1 = 0;
	signed int deltaYrobot1 = 0;


	//update local values from the passed param 
	robot1COM[0] = *(unsigned int *)(frame_com_array + 0 );
	robot1COM[1] = *(unsigned int *)(frame_com_array + 4 );
	robot2COM[0] = *(unsigned int *)(frame_com_array + 8 );
	robot2COM[1] = *(unsigned int *)(frame_com_array + 12 );
	  goalCOM[0] = *(unsigned int *)(frame_com_array + 16 );
	  goalCOM[1] = *(unsigned int *)(frame_com_array + 20 );

	//hardcode goalCOM to be right middle of screen (1500,500)
	goalCOM[0] = 1500;
	goalCOM[1] = 500;

	//calculate distance deltaX,deltaY
	deltaXrobot1 =    ( goalCOM[0] - robot1COM[0] );
	deltaYrobot1 =    ( goalCOM[1] - robot1COM[1] );

	//determine L,R,Straight,Stop commands based on deltaX,Y
	if(deltaXrobot1 > arrivedTolerance) {

	
		if(deltaYrobot1 > robotDriveTolerance) {printf("goRight"); serialDataOverNetwork[0] = (char)0; sendCommand(serialDataOverNetwork, socket_robot1);}
		if(deltaYrobot1 < -1*robotDriveTolerance) {printf("goLeft"); serialDataOverNetwork[0] = (char)2; sendCommand(serialDataOverNetwork, socket_robot1);}
		else {printf("goStraight"); serialDataOverNetwork[0] = (char)1; sendCommand(serialDataOverNetwork, socket_robot1);}
	} 

	
	else {printf("STOP"); serialDataOverNetwork[0] = (char)3; sendCommand(serialDataOverNetwork, socket_robot1);}

	return;
}


// FINDME: add local memory values here for center of mass, corners, etc to calculate orientation and robot commands

void motion_demo_processing( unsigned int in_buffer, unsigned int out_buffer, unsigned int com_buffer) // add the parameters here from main execution loop
{
	

	//unsigned int testCOM[6];

TIME_STAMP_INIT
	img_process( (unsigned int *)in_buffer, (unsigned int *)out_buffer, (unsigned int *)com_buffer); // more parameters here for values passed from img_process
TIME_STAMP


	printf("COM= %u, %u, %u, %u, %u, %u \n", *(unsigned int *)(com_buffer + 0), *(unsigned int *)(com_buffer + 4),*(unsigned int *)(com_buffer + 8), *(unsigned int *)(com_buffer + 12), *(unsigned int *)(com_buffer + 16), *(unsigned int *)(com_buffer + 20)); 

	//call robot command function with COM (and later corner)
	robotCommand(com_buffer);

}






void *thread_sw_sync()
{
	unsigned int output_frame[MAX_BUFFER];
	unsigned int input_frame[MAX_BUFFER];
	unsigned int virt_output_frame[MAX_BUFFER];
	unsigned int virt_input_frame[MAX_BUFFER];
	//COM per frame
    unsigned int virt_frame_COM[MAX_BUFFER];

	int i = 0;
	int offset = 0;
	//size needed to be allocated for COM	
	unsigned int com_len = COM_COUNT * sizeof(int);

	// starting indices
	unsigned int map_len = NUMPADCOLS * NUMROWS * sizeof(int);
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	//pointer to received COM
	unsigned int* com_out; // (0, 1) = (ax, ay); (2, 3) = (bx, by) ; (4, 5) = (cx, cy)
	

	int infrm_index = 2 ,outfrm_index = 0, accel_prev_index=0, accel_in_index = 1, accel_out_index = 1, com_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		output_frame[i] = gLayerBase[DISPLAY_LAYER] + offset;
		input_frame[i] = gLayerBase[INPUT_LAYER] + offset;
		offset += ibufferoffset;
		virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)input_frame[i]);
		virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)output_frame[i]);

		//for each circular buffer of the frame, allocate dedicated mem space for COM
		com_out = (unsigned int *)apf_alloc(com_len); // 6 location for 2 coordinates of all 3 COM

		virt_input_frame[i] = (unsigned int)virtual_addr_in;
        virt_output_frame[i] = (unsigned int)virtual_addr_out;
		//sync address of com_out with mem stored in virt_frame_COM
		virt_frame_COM[i] = (unsigned int)com_out;
		

#ifndef SDS_NOMMAP
                sds_mmap((void *)input_frame[i], map_len, virtual_addr_in);
                sds_mmap((void *)output_frame[i], map_len, virtual_addr_out);
#endif
	}
	close (fd);
	setCVC_TPGBuffer(outfrm_index,infrm_index);
	motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index], virt_frame_COM[com_index]);
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

		//update com index for circular buffer storing
		com_index++;
		com_index   %= MAX_BUFFER;

		motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index], virt_frame_COM[com_index]);

	} 

}


int main(int argc, char **argv)
{
	printf("\n START CODE \n");
	init_all();
	//initialize the server -> will be blocking until both robots connected	
	isNetworkAlive = init_network();
	thread_sw_sync(); // Sample code - loop forever, exit with Ctrl-C

	
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

