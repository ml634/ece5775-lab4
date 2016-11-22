// Program to filter incoming images of the robot
// Filters include: Median for preprocessing, harris corner detector, and color filtering
// Andrew Palmer (ajp294)
// 10 November 2016

/*
 * Image processing pipeline:
 * 1. Color thresholding for each color
 * 2. Morphological closing to improve threshold results
 
 * Other operations:
 * 1. Corner detection using Harris or FAST 
 * 2. Calculate Centroid for each thresholded color (red robot, blue robot, green goal)
 * 3. Match corner point to appropriate object
*/

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/opencv.hpp"

#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define ARRAY_SIZE 32

using namespace cv;
using namespace std;

// Global Variables
cv::Mat blueRobot, redRobot, greenGoal;
// unsigned int blueCOM[2], redCOM[2], greenCOM[2];
// unsigned int keypoints[10];
// FINDME: vectors of points not synthesizable
std::vector<cv::KeyPoint> keypoints;
unsigned int cornerPoints[ARRAY_SIZE][2];
cv::Point cornerPointsCV[ARRAY_SIZE];
unsigned int redRobotCoords[4]; // 2 Points (each point has x and y value)
unsigned int blueRobotCoords[4]; // 2 Points (each point has x and y value)
unsigned int greenGoalCoords[4]; // 2 Points (each point has x and y value)


// Function headers 
// FINDME: use header file for this eventually
cv::Mat thresholdRGB(cv::Mat src, Scalar color);
void centerOfMass(cv::Mat src, char color);
cv::Mat morphologicalClosing(cv::Mat src);
std::vector<cv::Point> harrisCornerDetect(cv::Mat src, int threshold);
void fastXCornerDetect(cv::Mat src, int threshold);
double calculateAngleFromMoments(cv::Mat src, int comX, int comY);
// void matchCornerToCOM(int comX, int comY,  unsigned int * cornerPoints);
void matchCornerToCOM(int comX, int comY, char color); // int comX, int comY,  unsigned int * cornerPoints);


// Main function
int main(int argc, char ** argv) 
{
   // FINDME: test greyscale 
   cv::Mat src_grey;

   // read input image from command line
   cv::Mat src = imread(argv[1], 1);

   cvtColor(src, src_grey, CV_BGR2GRAY );

   // Other operations
   // 1. Detect corners
   // fastXCornerDetect(src_grey, 200);
   FAST(src_grey, keypoints, 120); // 120 as a threshold seems to work for greyscale, unprocessed original 
   for (size_t i = 0; i < keypoints.size(); i++) {
      const KeyPoint& kp = keypoints[i];
      circle(src_grey, kp.pt, 3, Scalar(80, 80, 80), 2, 8, 0);
      // add keypoint point to array
      cornerPoints[i][0] = kp.pt.x;
      cornerPoints[i][1] = kp.pt.y;
      cornerPointsCV[i] = kp.pt; // Corner points in cv::Point type
   }
   namedWindow("corners", CV_WINDOW_AUTOSIZE);
   imshow("corners", src_grey);
   
   // std::cout << "corners: " << keypoints << std::endl;

   // Image processing pipeline operations
   // 1. threshold by color to detect robots and goal
   redRobot = thresholdRGB(src, Scalar(0, 0, 255));
   blueRobot = thresholdRGB(src, Scalar(255, 0, 0));
   
   // 2. Morphological closing on robot
   redRobot = morphologicalClosing(redRobot);
   blueRobot = morphologicalClosing(blueRobot);

   // Other operations
   // 2. Calculate Centroid for each thresholded color (red robot, blue robot, green goal)
   centerOfMass(redRobot, 'r');
   centerOfMass(blueRobot, 'b');


   // 3. Match corner point to appropriate object
   // matchCornerToCOM(redCOM[0], redCOM[1], 'r');
   // matchCornerToCOM(blueCOM[0], blueCOM[1], 'b');
   matchCornerToCOM(redRobotCoords[0], redRobotCoords[1], 'r');
   matchCornerToCOM(blueRobotCoords[0], blueRobotCoords[1], 'b');

   // draw circles at each COM
   // circle(redRobot, Point(redCOM[0], redCOM[1]), 3, Scalar(80, 80, 80), 2, 8, 0);
   // circle(blueRobot, Point(blueCOM[0], blueCOM[1]), 3, Scalar(80, 80, 80), 2, 8, 0);
   circle(redRobot, Point(redRobotCoords[0], redRobotCoords[1]), 3, Scalar(80, 80, 80), 2, 8, 0);
   circle(blueRobot, Point(blueRobotCoords[0], blueRobotCoords[1]), 3, Scalar(80, 80, 80), 2, 8, 0);

   // Draw line between corner point and robot COM
   // line(redRobot, Point(redCOM[0], redCOM[1]), Point(redRobotCoords[2], redRobotCoords[3]), Scalar(127, 127, 127), 2, 8, 0);
   // line(blueRobot, Point(blueCOM[0], blueCOM[1]), Point(blueRobotCoords[2], blueRobotCoords[3]), Scalar(127, 127, 127), 2, 8, 0);
   line(redRobot, Point(redRobotCoords[0], redRobotCoords[1]), Point(redRobotCoords[2], redRobotCoords[3]), Scalar(127, 127, 127), 2, 8, 0);
   line(blueRobot, Point(blueRobotCoords[0], blueRobotCoords[1]), Point(blueRobotCoords[2], blueRobotCoords[3]), Scalar(127, 127, 127), 2, 8, 0);

   // show resulting images
   namedWindow("red robot", CV_WINDOW_AUTOSIZE);
   imshow("red robot", redRobot);

   namedWindow("blue robot", CV_WINDOW_AUTOSIZE);
   imshow("blue robot", blueRobot);

   waitKey(0);
   return(0);
}

// Threshold image based on color
cv::Mat thresholdRGB(cv::Mat src, Scalar color)
{
   cv::Mat thresholdResult; // greyscale, binary result image
   cv::Vec3b pixelIntensity; // 3 channel RGB pixel value vector
   unsigned char pixelBlue, pixelRed, pixelGreen;
   
   // initialize result image
   thresholdResult = Mat::zeros(src.size(), CV_8UC1); 

   // iterate through source pixels and threshold based on input color
   for (int j = 0; j < src.rows; j++) {
      for (int i = 0; i < src.cols; i++) {
         pixelIntensity = src.at<cv::Vec3b>(j, i);
         pixelBlue = pixelIntensity.val[0];
         pixelGreen = pixelIntensity.val[1];
         pixelRed = pixelIntensity.val[2];

         if (color == Scalar(0, 0, 255)) {
            // threshold with red
            if (pixelRed > 160 && pixelGreen < 110/*70*/ && pixelBlue < 135/*90*/) {
               thresholdResult.at<unsigned char>(j, i) = 255;
            }
         }
         else if (color == Scalar(0, 255, 0)) {
            // threshold with green
            if (pixelIntensity.val[1] > 180) { 
               thresholdResult.at<unsigned char>(j, i) = 255;
            }
         }
         else if (color == Scalar(255, 0, 0)) {
            // threshold with blue 
            if (pixelRed < 70 && pixelGreen < 100 && pixelBlue > 95/*135*/) { 
               thresholdResult.at<unsigned char>(j, i) = 255;
            }
         }
      }
   }

   return thresholdResult;
}

void centerOfMass(cv::Mat src, char color)
{
   unsigned int m00, m01, m10; // Moment values
   unsigned int xBar, yBar; // Center of mass coordinates

   // init values
   m00 = 0;
   m01 = 0;
   m10 = 0;
   xBar = 0;
   yBar = 0;

   // iterate through all pixel values
   for (int j = 0; j < src.rows; j++) {
      for (int i = 0; i < src.cols; i++) {
         m00 += src.at<unsigned char>(j, i);
         m01 += src.at<unsigned char>(j, i) * j;
         m10 += src.at<unsigned char>(j, i) * i;
      }
   }
   
   // std::cout << "Area: " << m00 << std::endl;
   // std::cout << "M10: " << m10 << std::endl;
   // std::cout << "M01: " << m01 << std::endl;

   xBar = m10 / m00;
   yBar = m01 / m00;
  
   // Save COM to appropriate robot COM array
   switch(color) {
      case('b'):
         // std::cout << "blue" << std::endl;
         // blueCOM[0] = xBar;
         // blueCOM[1] = yBar;
         blueRobotCoords[0] = xBar;
         blueRobotCoords[1] = yBar;
         // std::cout << "blue: " << blueCOM[0] << ", " << blueCOM[1] << std::endl;
         break;

      case('r'):
         // std::cout << "red" << std::endl;
         // redCOM[0] = xBar;
         // redCOM[1] = yBar;
         redRobotCoords[0] = xBar;
         redRobotCoords[1] = yBar;
         // std::cout << "blue: " << blueCOM[0] << ", " << blueCOM[1] << std::endl;
         break;

      case('g'):
         // greenCOM[0] = xBar;
         // greenCOM[1] = yBar;
         greenGoalCoords[0] = xBar;
         greenGoalCoords[1] = yBar;
         break;
   }

   // std::cout << "Point: " << Point(xBar, yBar) << std::endl;

   // Draw circle at center of mass
   // circle(src, Point(xBar, yBar), 6, Scalar(255, 255, 255), 2, 8, 0);
   // namedWindow( "Center of mass", CV_WINDOW_AUTOSIZE );
   // imshow( "Center of mass", src );

}

std::vector<cv::Point> harrisCornerDetect(cv::Mat src, int threshold)
{
   cv::Mat result;
   cv::Mat normalizedResult;
   cv::Mat normalizedScaledResult;
   std::vector<cv::Point> cornerPoints;
   
   // detection parameters
   int blockSize = 2;
   int apertureSize = 3;
   double k = 0.04;

   // Detect corners
   cornerHarris(src, result, blockSize, apertureSize, k, BORDER_DEFAULT);

   // Normalizing
   normalize(result, normalizedResult, 0, 255, NORM_MINMAX, CV_32FC1, Mat() );
   convertScaleAbs( normalizedResult, normalizedScaledResult);

   // Drawing a circle around corners
   for (int j = 0; j < normalizedResult.rows ; j++ ) {
       for (int i = 0; i < normalizedResult.cols; i++ ) {
          if ((int) normalizedResult.at<float>(j,i) > threshold ) {
             cornerPoints.push_back(Point(i,j));
             // std::cout << "Corner at " << normalizedResult.at<float>(j,i) << std::endl;
             circle( normalizedScaledResult, Point( i, j ), 5,  Scalar(0), 2, 8, 0 );
          }
       }
   }

   // show normalized result with circles drawn
   namedWindow("Harris corner", CV_WINDOW_AUTOSIZE);
   imshow("Harris corner", normalizedScaledResult);

   // return corner points found in image
   // std::cout << "Corner Point: " << cornerPoint << std::endl;
   return cornerPoints;
}

cv::Mat morphologicalClosing(cv::Mat src) 
{
   cv::Mat resultDilate, resultClose;

   // generate closing kernel
   Mat kernel(3, 3, CV_8UC1, Scalar(255, 255, 255));

   // apply dilation
   dilate(src, resultDilate, kernel);

   // apply erosion
   erode(resultDilate, resultClose, kernel);

   // return filtered image
   return resultClose;
}

void fastXCornerDetect(cv::Mat src, int threshold)
{
   cv::Mat src_grey;

   // convert to greyscale
   cvtColor(src, src_grey, CV_BGR2GRAY );

   // perform FAST corner detect
   FAST(src_grey, keypoints, threshold, true);
}

double calculateAngleFromMoments(cv::Mat src, int comX, int comY) 
{
   // cv::Point COM;
   unsigned int xBar, yBar;
   unsigned int u11, u20, u02;
   int theta;

   // initialize central moments
   u11 = 0; 
   u20 = 0;
   u02 = 0;

   // calculate center of mass for object
   // COM = centerOfMass(src);
   xBar = comX;
   yBar = comY;

   // calculate central momemts
   for (int j = 0; j < src.rows; j++) {
      for (int i = 0; i < src.cols; i++) {
         u11 += (src.at<unsigned char>(j, i) / 255) * (j-yBar) * (i-xBar); // normalizing with / 255
         u20 += (src.at<unsigned char>(j, i) / 255) * (i-xBar) * (i-xBar); 
         u02 += (src.at<unsigned char>(j, i) / 255) * (j-yBar) * (j-yBar);
      }
   }
   std::cout << "u11: " << u11 << std::endl;
   std::cout << "u20: " << u20 << std::endl;
   std::cout << "u02: " << u02 << std::endl;
   
   // calculate orientation using the central moments
   theta = 0.5 * atan((2 * u11) / (u20 - u02));
   // convert to degrees
   theta = theta * (180 / 3.141529);
   std::cout << "Theta: " << theta << std::endl;

   return theta;
}

void matchCornerToCOM(int comX, int comY, char color) 
{
   int distance;
   bool cornerFound = false;

   // Iterate through array of corner points
   for (int i = 0; i < ARRAY_SIZE; i++) {
      distance = abs(comY - cornerPointsCV[i].y) + abs(comX - cornerPointsCV[i].x);

      // if distance is less than threshold then it's a COM/corner pair for a single robot
      // std::cout << "distance : " << distance << std::endl;
      if (distance < 50 && !cornerFound) {
         if (color == 'r') {
            // std::cout << "red color corners: " << cornerPointsCV[i].x << ", " << cornerPointsCV[i].y << std::endl;
            redRobotCoords[2] = cornerPointsCV[i].x;
            redRobotCoords[3] = cornerPointsCV[i].y;  
            cornerFound = true;
         }
         else if (color == 'b' && !cornerFound) {
            // std::cout << "blue color corners: " << cornerPointsCV[i].x << ", " << cornerPointsCV[i].y << std::endl;
            blueRobotCoords[2] = cornerPointsCV[i].x;
            blueRobotCoords[3] = cornerPointsCV[i].y;  
            cornerFound = true;
         }
      }
   }
}
