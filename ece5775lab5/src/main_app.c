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

#include <math.h>

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
//4 pts CORNER x,y
#define CORNER_ELEMENTS 8
#define CORNER_COUNT 2 * CORNER_ELEMENTS // should be 16 total values

#define arrivedTolerance    100
#define robotToleranceAngle 1



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
void robotCommand(unsigned int frame_com_array, unsigned int frame_corner_array) {

	unsigned int robot1COM[2], robot2COM[2], goalCOM[2];
	unsigned int robot1CornerA[2], robot1CornerB[2],robot1CornerC[2],robot1CornerD[2];
	
	signed int deltaXrobot1 = 0;
	signed int deltaYrobot1 = 0;

	unsigned int deltaXCornerAB = 0;
	unsigned int deltaYCornerAB = 0;
	unsigned int deltaXCornerAD = 0;
	unsigned int deltaYCornerAD = 0;

	unsigned int widthAB, widthAD, area;
	double divisionCornerDC, divisionRobot1Goal;

	signed int robotAngle1 = 0;
	signed int robotAngle2 = 0;
	signed int robot1Angle2Goal = 0;
	signed int robot1AngleDifference = 0;

	unsigned int robotToGoalDistance = 0;

	//update local values from the passed param 
	robot1COM[0] = *(unsigned int *)(frame_com_array + 0 );
	robot1COM[1] = *(unsigned int *)(frame_com_array + 4 );
	robot2COM[0] = *(unsigned int *)(frame_com_array + 8 );
	robot2COM[1] = *(unsigned int *)(frame_com_array + 12 );
	  goalCOM[0] = *(unsigned int *)(frame_com_array + 16 );
	  goalCOM[1] = *(unsigned int *)(frame_com_array + 20 );

	//hardcode goalCOM to be right middle of screen (1500,500)
	goalCOM[0] = 1800;
	goalCOM[1] = 500;

	//calculate distance deltaX,deltaY
	deltaXrobot1 =    ( goalCOM[0] - robot1COM[0] );
	deltaYrobot1 =    ( goalCOM[1] - robot1COM[1] );

	//calculate area of red, blue box from 4 corners each
	//corners stored order: A (xmin) C(xmax) B (ymin) D(ymax)
	robot1CornerA[0] = *(unsigned int *)(frame_corner_array + 0 );
	robot1CornerA[1] = *(unsigned int *)(frame_corner_array + 4 );
	robot1CornerC[0] = *(unsigned int *)(frame_corner_array + 8 );
	robot1CornerC[1] = *(unsigned int *)(frame_corner_array + 12 );
	robot1CornerB[0] = *(unsigned int *)(frame_corner_array + 16 );
	robot1CornerB[1] = *(unsigned int *)(frame_corner_array + 20 );
	robot1CornerD[0] = *(unsigned int *)(frame_corner_array + 24 );
	robot1CornerD[1] = *(unsigned int *)(frame_corner_array + 28 );

	//get area from width of AB and AD 
	deltaXCornerAB = (robot1CornerA[0]-robot1CornerB[0]);
	deltaYCornerAB = (robot1CornerA[1]-robot1CornerB[1]);
	widthAB = (deltaXCornerAB*deltaXCornerAB) + (deltaYCornerAB*deltaYCornerAB); 

	deltaXCornerAD = (robot1CornerA[0]-robot1CornerD[0]);
	deltaYCornerAD = (robot1CornerA[1]-robot1CornerD[1]);
	widthAD = (deltaXCornerAD*deltaXCornerAD) + (deltaYCornerAD*deltaYCornerAD); 

	area = widthAB * widthAD;

	//printf("area = %u \n", area);

	//get angle from the 4 corners
	//to prevent divide by 0
	if (robot1CornerD[0] != robot1CornerA[0] ) {
		
		//deltaY / deltaX
		divisionCornerDC = (double) (( signed int)robot1CornerD[1] - ( signed int)robot1CornerC[1] ) / (( signed int)robot1CornerC[0] - (signed int)robot1CornerD[0]); //y is flipped order bc pixel y coordinate

		robotAngle1 = (signed int)(atan(divisionCornerDC)* 180 / 3.14 );
		//robotAngle1 = 90 - robotAngle1;
		//printf("robot1 angle = %d \n", robotAngle1);
	}

	//get angle from COMs
	if ( robot1COM[0] != goalCOM[0] ) {

		//deltaY / deltaX
		divisionRobot1Goal = (double) (( signed int)robot1COM[1] - ( signed int)goalCOM[1] ) / (( signed int)goalCOM[0] - (signed int)robot1COM[0]); //y is flipped order bc pixel y coordinate

		robot1Angle2Goal = (signed int)(atan(divisionRobot1Goal)* 180 / 3.14 );
		//robot1Angle2Goal = 90 -robot1Angle2Goal;
		// printf("angle2Goal: = %d \n", robot1Angle2Goal);

	}

		//get difference in theta
		robot1AngleDifference = robot1Angle2Goal - robotAngle1 ;
		printf("robot1 angle = %d, angle2Goal: %d,differenceAngle: = %d \n", robotAngle1, robot1Angle2Goal, robot1AngleDifference);
		


	// area is big enough and not noise
	if( area > 10000 ) {


		//get robot to goal distance
		robotToGoalDistance = ( ( robot1COM[1] - goalCOM[1] ) * ( robot1COM[1] - goalCOM[1] ) )+ ( (goalCOM[0] - robot1COM[0]) * (goalCOM[0] - robot1COM[0]));


		//determine L,R,Straight,Stop commands based on robot angle until reach tolerance radius to goal
		if(robotToGoalDistance > arrivedTolerance) {

	
			if( robot1AngleDifference < -1*robotToleranceAngle) {
				printf("goRight \n"); 
				
				serialDataOverNetwork[0] = (char)0; sendCommand(serialDataOverNetwork, socket_robot1);
				printf("serialData: = %d \n", serialDataOverNetwork[0] ); 
			}
			else if( robot1AngleDifference >  robotToleranceAngle) {printf("goLeft \n"); serialDataOverNetwork[0] = (char)2; printf("serialData: = %d \n", serialDataOverNetwork[0] ); sendCommand(serialDataOverNetwork, socket_robot1);}
			else {printf("goStraight \n"); serialDataOverNetwork[0] = (char)1; sendCommand(serialDataOverNetwork, socket_robot1);}
		} 

	
		else {printf("STOP \n"); serialDataOverNetwork[0] = (char)3; sendCommand(serialDataOverNetwork, socket_robot1);}

		return;
	}
}



void motion_demo_processing( unsigned int in_buffer, unsigned int out_buffer, unsigned int com_buffer, unsigned int corner_buffer) // add the parameters here from main execution loop
{
	

	//unsigned int testCOM[6];

TIME_STAMP_INIT
	img_process( (unsigned int *)in_buffer, (unsigned int *)out_buffer, (unsigned int *)com_buffer, (unsigned int *) corner_buffer); // more parameters here for values passed from img_process
TIME_STAMP


	printf("COM= %u, %u, %u, %u, %u, %u \n", *(unsigned int *)(com_buffer + 0), *(unsigned int *)(com_buffer + 4),*(unsigned int *)(com_buffer + 8), *(unsigned int *)(com_buffer + 12), *(unsigned int *)(com_buffer + 16), *(unsigned int *)(com_buffer + 20)); 

	//printf("corners= %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u \n", *(unsigned int *)(corner_buffer + 0), *(unsigned int *)(corner_buffer + 4),*(unsigned int *)(corner_buffer + 8), *(unsigned int *)(corner_buffer + 12), *(unsigned int *)(corner_buffer + 16), *(unsigned int *)(corner_buffer + 20) , *(unsigned int *)(corner_buffer + 24), *(unsigned int *)(corner_buffer + 28), *(unsigned int *)(corner_buffer + 32), *(unsigned int *)(corner_buffer + 36), *(unsigned int *)(corner_buffer + 40), *(unsigned int *)(corner_buffer + 44), *(unsigned int *)(corner_buffer + 48), *(unsigned int *)(corner_buffer + 52), *(unsigned int *)(corner_buffer + 56), *(unsigned int *)(corner_buffer + 60)); 

	//call robot command function with COM (and later corner)
	robotCommand(com_buffer, corner_buffer );

}



void *thread_sw_sync()
{
	unsigned int output_frame[MAX_BUFFER];
	unsigned int input_frame[MAX_BUFFER];
	unsigned int virt_output_frame[MAX_BUFFER];
	unsigned int virt_input_frame[MAX_BUFFER];
	//COM per frame
    	unsigned int virt_frame_COM[MAX_BUFFER];
    	unsigned int virt_frame_corners[MAX_BUFFER];

	int i = 0;
	int offset = 0;
	//size needed to be allocated for COM and corners
	unsigned int com_len = COM_COUNT * sizeof(int);
    unsigned int corner_len = CORNER_COUNT * sizeof(int);

	// starting indices
	unsigned int map_len = NUMPADCOLS * NUMROWS * sizeof(int);
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	//pointer to received COM
	unsigned int* com_out; // (0, 1) = (ax, ay); (2, 3) = (bx, by) ; (4, 5) = (cx, cy)
	//pointer to received corner
	unsigned int* corner_out; 
	

	int infrm_index = 2 ,outfrm_index = 0, accel_prev_index=0, accel_in_index = 1, accel_out_index = 1, com_index = 1, corner_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		output_frame[i] = gLayerBase[DISPLAY_LAYER] + offset;
		input_frame[i] = gLayerBase[INPUT_LAYER] + offset;
		offset += ibufferoffset;
		virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)input_frame[i]);
		virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)output_frame[i]);

		//for each circular buffer of the frame, allocate dedicated mem space for COM
		com_out = (unsigned int *)apf_alloc(com_len); // 6 location for 2 coordinates of all 3 COM
      
                // allocate memory for corners
		corner_out = (unsigned int *)apf_alloc(corner_len); // 16 locations, 8 corners, 2 robots (4 corners each)

		virt_input_frame[i] = (unsigned int)virtual_addr_in;
        	virt_output_frame[i] = (unsigned int)virtual_addr_out;
		//sync address of com_out with mem stored in virt_frame_COM
		virt_frame_COM[i] = (unsigned int)com_out;
		virt_frame_corners[i] = (unsigned int)corner_out;
		

#ifndef SDS_NOMMAP
                sds_mmap((void *)input_frame[i], map_len, virtual_addr_in);
                sds_mmap((void *)output_frame[i], map_len, virtual_addr_out);
#endif
	}
	close (fd);
	setCVC_TPGBuffer(outfrm_index,infrm_index);
	motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index], virt_frame_COM[com_index], virt_frame_corners[corner_index]);
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

                corner_index++; 
                corner_index %= MAX_BUFFER;

		motion_demo_processing(virt_input_frame[accel_in_index], virt_output_frame[accel_out_index], virt_frame_COM[com_index], virt_frame_corners[corner_index]);

	} 

}


int main(int argc, char **argv)
{
	printf("\n START CODE \n");
	init_all();
	//initialize the server -> will be blocking until both robots connected	
	isNetworkAlive = init_network();
	thread_sw_sync(); // Sample code - loop forever, exit with Ctrl-C


	
	return EXIT_SUCCESS;
}

