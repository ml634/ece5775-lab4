/*
* File:				Multi-Robot Localization on Heterogenous Platform (SW version)
* Author:			Moonyoung Lee (ml634@cornell.edu)
* Adapted from:
*					main.cpp by
* Author:			Mohit Sravya
* Target Hardward:  Visual Studio Laptop to RPi/ Arduino (Galileo/Edison)
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
//#include "hls_video.h"

// networking global variables
struct sockaddr_in server;
int socket_desc;
char isNetworkAlive;
char serialDataOverNetwork[1];
#define SERVER_IP "192.168.137.123"
#define PORT 23


char init_network()
{
	// attempt to open socket
	socket_desc = socket(AF_INET, SOCK_STREAM, 0);
	if (socket_desc == -1) {
		printf("Couldn't create Socket.\n");
		return 0;
	}

	server.sin_addr.s_addr = inet_addr(SERVER_IP);
	server.sin_family = AF_INET;
	server.sin_port = htons(PORT);

	// connect to remote server
	if (connect(socket_desc, (struct sockaddr *)&server, sizeof(server)) < 0) {
		printf("Connection failed.\n");
		return 0;
	}

	printf("Network connected.\n");
	return 1;
}

void sendCommand(char *serialDataOverNetwork)
{
	if ( isNetworkAlive &&  ( send ( socket_desc, serialDataOverNetwork, strlen(serialDataOverNetwork), 0) < 0 ) ) {
		printf("Send failed.\n");
	}
	else if ( !isNetworkAlive ) {
		// if network somehow failed, then initiate again
		isNetworkAlive = init_network();
	}

	return;
}


int main(int argc, char **argv)
{
	printf("\n START CODE \n");
	isNetworkAlive = init_network();
	serialDataOverNetwork[0] = (char)3;
        while(1) 
	{ 

		sendCommand(serialDataOverNetwork);
		printf("\n sent packet \n");
 
	}
        
	return EXIT_SUCCESS;
}

