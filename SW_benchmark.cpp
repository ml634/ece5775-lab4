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
#include "stdafx.h"
#include "ServerGame.h"
#include "ClientGame.h"

#include <iostream>
#include <math.h>
#include <time.h>
#include <numeric>

#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace std;
using namespace cv;

// Functions declarations
void iRobotCommandFormatVelocity(int, char *);
void sendCommands(char *);
void serverLoop(void *);
void morphFilter(Mat);
void updateGoalPosition(Mat);
int getAngleDifference(Point2f, Point2f, Point2f);

char * serialDataOverNetwork = new char[2];


ServerGame * server;
ClientGame * client;

#define PI 3.14159265
#define numberOfRobot 2					//adjust to # of robot on field

int robotCount = 0;						//used to iterate newly found robot
int detectedSize = 0;
int detectedRobots = -1;					//used to count how many robots on detected field 
int extendLineLength = 100;				//line used to extend from robot

vector<Moments> mu(numberOfRobot);			//holds Moments
Point2f newPosition;						//holds Center of Mass (X,Y) for unknown robot
Point2f goalPosition = Point2f(500, 400);	//holds desired end pt


int x, y, MA, ma, angle;
int intializedRobot = 0;				//initialize Robot with ID and starting location

//angle between header and goal
int angleDifference;

#define averageFilterSize 5
double angleArray[averageFilterSize] = {};					//holds 5pt averaging filter values
double angleFiltered;						//averaged angle
int angleArrayCounter = 0;					//to index through Array
#define angleTolerance 10				//degree to go straight instead of turning
#define distanceComplete 100			//distance in pixel size to determine if goal reached
#define ROBOT_SIZE 3000					//calibrated robot pixel_size > adjust with setup

Mat ImgOriginal;	//instance of Img Mat
Mat ImgGray;		//instance of HSV Mat
Mat ImgThreshold;	//instance of Threshold Mat
Mat ImgHSV;
Mat ImgThresholdGoal; //instance of Threshold Mat for Goal Object		
Mat ImgCombined;	 //instance of Robot and Goal

//HSV values to threshold black objects
int lowH = 0;
int highH = 179;
int lowS = 0;
int highS = 255;
int lowV = 0;
int highV = 91;

//HSV values to threshold neon objects
int lowHGoal = 32;
int highHGoal = 108;
int lowSGoal = 17;
int highSGoal = 87;
int lowVGoal = 195;
int highVGoal = 255;

bool doneState = false; //flag to complete tracking
double remainingDist = 0;

//========================================================
// class of Robot to hold unique info
//========================================================
class Robot {
public:
	int robotID = 0;
	Point2f previousPos;
	Point2f position;
	double angle;								//robot orientation
	Point2f extendLinePos;						//extends in direction of orientation
};

Robot robotList[numberOfRobot]; //enter number of robot object to store in array


//========================================================
// Main Function
//========================================================
int main() {

	// To set new IP server, go to ClientNetwork.cpp line 37 
	//client = new ClientGame();

	// initiate camera
	VideoCapture capture(0);

	// no instance of camera
	if (!capture.isOpened()) {
		cout << "Video Capture Error" << endl;
		system("pause");
		return -1;
	}

	//enter main loop default stage
	//iRobotCommandFormatVelocity(4, serialDataOverNetwork); sendCommands(serialDataOverNetwork);


	/* ================== MAIN WHILE LOOP =====================
	/ - Image Process [Input > GrayScale > Denoise > Canny Edge > Find Contour]
	/ - Tracking Algorithm [Match Robot ID > Find CoM > Find Orientation > Determine Command]
	/ - Send Command
	=========================================================== */
	while (true) {

		// read video input
		bool vidSuccess = capture.read(ImgOriginal);
		if (!vidSuccess) { cout << "No video input" << endl;  break; }

		/* ================== Object Detection Setup ===================== */

		//Threshold with black color object
		cvtColor(ImgOriginal, ImgHSV, COLOR_BGR2HSV);
		inRange(ImgHSV, Scalar(lowH, lowS, lowV), Scalar(highH, highS, highV), ImgThreshold);
		//Threshold with goal color object
		inRange(ImgHSV, Scalar(lowHGoal, lowSGoal, lowVGoal), Scalar(highHGoal, highSGoal, highVGoal), ImgThresholdGoal);

		//Denoise w/ morphology filter
		morphFilter(ImgThreshold);
		morphFilter(ImgThresholdGoal);

		//combine the 2 thresholds for display
		ImgCombined = ImgThreshold + ImgThresholdGoal;

		/* ================== Goal Tracking Algorithm  ===================== */

		// mask image for copying contour since modifies input
		Mat Img_maskGoal(ImgThresholdGoal.size(), CV_8UC3, Scalar(0));
		ImgThresholdGoal.copyTo(Img_maskGoal);

		//update XY position of the goal
		updateGoalPosition(Img_maskGoal);

		/* ================== Robot Tracking Algorithm  ===================== */

		// mask image for copying contour since modifies input
		Mat Img_mask(ImgThreshold.size(), CV_8UC3, Scalar(0));
		ImgThreshold.copyTo(Img_mask);
		
		//find contours of robots (arbitrary sequence of detecting shapes)
		RNG rng(12345);
		vector<vector<Point> > contours;
		vector<Vec4i> hierarchy;
		vector<Point> polyApprox;
		findContours(Img_mask, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0));

		//loop through detected contour  newly execute PER FRAME
		for (int i = 0; i < contours.size(); i++) {

			//get area of detected contour
			detectedSize = contourArea(contours[i]);

			//perfrom on only robot-sized objects
			if (detectedSize > ROBOT_SIZE) {

					detectedRobots += 1;
					//========================================================

					//get new position of unknown robot
					mu[0] = moments(contours[i]);
					newPosition = Point2f((mu[0].m10 / mu[0].m00), (mu[0].m01 / mu[0].m00));

					//========================================================

					//case for 1 robot
					robotList[detectedRobots].position = newPosition;

					//draw circle on CoM
					circle(ImgOriginal, robotList[detectedRobots].position, 5, Scalar(0, 255, 0), 2);
					//draw circle on end PT
					circle(ImgOriginal, goalPosition, 5, Scalar(0, 0, 255), 2);
					//draw line from 2 pts
					line(ImgOriginal, robotList[detectedRobots].position, goalPosition, Scalar(0, 0, 255), 1);

					//draw box around object
					RotatedRect box = fitEllipse(contours[i]);
					Point2f vtx[4];
					box.points(vtx);
					for (int j = 0; j < 4; j++) { line(ImgOriginal, vtx[j], vtx[(j + 1) % 4], Scalar(0, 255, 0), 1); }

					//get orientation of robot
					robotList[detectedRobots].angle = box.angle;
					cout << "angle of rob1: " << robotList[0].angle << endl;
					//average filter angle	
					angleArray[angleArrayCounter++ %averageFilterSize] = robotList[detectedRobots].angle;
					angleFiltered = accumulate(begin(angleArray), end(angleArray), 0);
					angleFiltered = angleFiltered / averageFilterSize;

					//draw extendLine for header
					robotList[detectedRobots].extendLinePos = Point2f(robotList[detectedRobots].position.x + extendLineLength*sin((angleFiltered)*PI / 180), robotList[detectedRobots].position.y - extendLineLength*cos((angleFiltered)*PI / 180));

					//draw line from 2 pts
					line(ImgOriginal, robotList[detectedRobots].position, robotList[detectedRobots].extendLinePos, Scalar(0, 255, 0), 1);


					// get angle between 2 lines (robot header & goal line)
					angleDifference = getAngleDifference(robotList[detectedRobots].extendLinePos, robotList[detectedRobots].position, goalPosition);
					putText(ImgOriginal, to_string(angleDifference), robotList[detectedRobots].position, FONT_HERSHEY_COMPLEX, 0.5, Scalar(255, 255, 255), 2);

					// determine when goal is reached
					remainingDist = (cv::norm(goalPosition - robotList[detectedRobots].position));
					//cout << "distance: " << remainingDist << endl;

					//hard-coded for the first robot only
					if (detectedRobots == 0) {
						// ***determine commands***
						if ((angleDifference > angleTolerance) && (remainingDist > distanceComplete)) { cout << "Right" << endl;  iRobotCommandFormatVelocity(0, serialDataOverNetwork); sendCommands(serialDataOverNetwork); }
						else if ((angleDifference < -angleTolerance) && (remainingDist > distanceComplete)) { cout << "Left" << endl; iRobotCommandFormatVelocity(2, serialDataOverNetwork); sendCommands(serialDataOverNetwork); }
						else if ((angleDifference > -angleTolerance) && (angleDifference < angleTolerance) && (remainingDist > distanceComplete)) { cout << "Straight" << endl; iRobotCommandFormatVelocity(1, serialDataOverNetwork); sendCommands(serialDataOverNetwork); }
						else { cout << "Stop" << endl; iRobotCommandFormatVelocity(4, serialDataOverNetwork); sendCommands(serialDataOverNetwork); }
				
					}
					
					//determine DONE when robot near Goal
					if (remainingDist < 100) {
						cout << "DONE" << endl;
						doneState = true;
					}

				
			} //end of detect size
		} //end of contour loop
		detectedRobots = -1;

		//display window
		imshow("raw", ImgOriginal);
		imshow("thres", ImgThreshold);


		if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
		{
			cout << "esc key is pressed by user" << endl;
			break;
		}

	}
	return 0;
}

//========================================================
// update Goal X,Y position
//========================================================
void updateGoalPosition(Mat maskGoal) {

	RNG rng(12345);
	vector<vector<Point> > contoursGoal;
	vector<Vec4i> hierarchy;
	vector<Point> polyApprox;

	findContours(maskGoal, contoursGoal, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0));

	//loop through detected contour
	for (int i = 0; i < contoursGoal.size(); i++) {

		//get area of detected contour
		detectedSize = contourArea(contoursGoal[i]);

		//perfrom on only robot-sized objects
		if (detectedSize > 500) {

			//get new position of unknown robot
			mu[0] = moments(contoursGoal[i]);
			goalPosition = Point2f((mu[0].m10 / mu[0].m00), (mu[0].m01 / mu[0].m00));
		}
	}
}

//========================================================
// get angle from three points from robot to goal
//========================================================
int getAngleDifference(Point2f robotHeadingPos, Point2f robotPos, Point2f goalPos) {

	float dy31, dy21, dx31, dx21;
	float theta1, theta2;

	dy21 = robotHeadingPos.y - robotPos.y;
	dy31 = goalPos.y - robotPos.y;
	dx21 = robotHeadingPos.x - robotPos.x;
	dx31 = goalPos.x - robotPos.x;
	theta1 = atan(dy21 / dx21) * 180 / PI;
	theta2 = atan(dy31 / dx31) * 180 / PI;
	return int((theta2 - theta1) + 0.5); //typecast to int w/ rounding
}


//========================================================
// Creates a byte of command
//========================================================
void iRobotCommandFormatVelocity(int rotationCommand, char * stringDataOverNetwork) {

	*(stringDataOverNetwork) = (char)(rotationCommand);

}

//========================================================
// Sends command into the network
//========================================================
void sendCommands(char * serialData) {
	//client->sendPackets(serialData);
}

// infinite loop for server - Not needed for this project
void serverLoop(void * arg)
{
	while (true)
	{
		server->update();
	}
}

//========================================================
//Denoise with morphology filter
//========================================================
void morphFilter(Mat image) {

	erode(image, image, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
	dilate(image, image, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));

	dilate(image, image, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
	erode(image, image, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));

}