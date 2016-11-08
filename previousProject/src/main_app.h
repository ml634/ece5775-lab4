#include <math.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>

#define PI 3.14159265
#define SERVER_IP "192.168.137.10"
#define PORT 23

// Control variables for serial commands
int MIN_SPEED_FRONT = 0;
int MIN_SPEED_BACK = 0;
int MIN_TURN_LEFT = 550;  // More radius; means less turn
int MIN_TURN_RIGHT = -550;  // more radius: means less turning

int MAX_SPEED_FRONT = 350;
int MAX_SPEED_BACK = -350;
int MAX_TURN_LEFT = 201;  // with 0 radius, turning will be maximum
int MAX_TURN_RIGHT = -201;  // with 0 radius, turning will be maximum

int MAX_RECT_ANGLE = 89;
int MIN_RECT_ANGLE = 1;

// to convert the range of radius
 int betaMin = 0;
 int betaMax = 0;
 int lMin = 0;
 int lMax = 0;


 // To convert the range of velocity
 int alphaMin = 0;
 int alphaMax = 0;
 int mMin = 4852800; // 1080^2 * 1920^2: Worst case scenario
 int mMax = 0;
 
 // networking global variables
 struct sockaddr_in server;
 int socket_desc;
 char isNetworkAlive;
 
 // calibration parameters
 // Calibration time of 1 second to allocate MAX range of object. Blue color
  unsigned int CALIBRATION_TIME_MAX_RANGE = 170;

  // Calibration time of 2 seconds to allocate MIN range of the object. Red color
  unsigned int CALIBRATION_TIME_MIN_RANGE = 340;

  // Wait for 3 seconds before start with the video: Pink color
  unsigned int CALIBRATION_COMPLETE_WAIT_TIME = 500;
  
  // delay timing
  double currentTime;
  double prevTime = 0;
  int elapsedTime;

  char stopCommandFlag = 0;
  unsigned int calibration_counter = 0;
