// Program to filter incoming images of the robot
// Filters include: Median for preprocessing, harris corner detector, and color filtering
// Andrew Palmer (ajp294)
// 10 November 2016

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/opencv.hpp"

#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace cv;
using namespace std;

// Global variables
Mat src, src_gray, labeledResult;
int thresh = 200;
int max_thresh = 255;

char* source_window = "Source image";
char* corners_window = "Corners detected";

// Function header
cv::Point findRobotBody(cv::Mat src, int thresholdStep, int numComponents);

// Median filter function
cv::Mat medianFilter(cv::Mat src, int window);

// Detect corners using harris and return corner points
std::vector<cv::Point> harrisCornerDetect(cv::Mat src, int threshold);

// filter black color to isolate robot body
cv::Mat blackFilter(cv::Mat src, int thresh);

// calculate center of mass
cv::Point centerOfMass(cv::Mat src);

// Connected component labeling
int connectedComponent(cv::Mat src);

/** @function main */
int main( int argc, char** argv )
{
   cv::Mat medianFilterResult;
   cv::Mat blackFilterResult;
   std::vector<cv::Point> cornerPoints;

   // Load source image from command line and convert it to gray
   src = imread( argv[1], 1 );
   cvtColor( src, src_gray, CV_BGR2GRAY );

   // Create a window of original image
   namedWindow( source_window, CV_WINDOW_AUTOSIZE );
   imshow(source_window, src_gray);

   // perform median filtering
   // result = medianFilter(src, 3);
   medianFilterResult = medianFilter(src_gray, 5);
   namedWindow("median filtered 5", CV_WINDOW_AUTOSIZE);
   imshow("median filtered 5", medianFilterResult);
   
   // perform harris corner detection of median filtered image
   cornerPoints = harrisCornerDetect(medianFilterResult, 220);

   std::cout << cornerPoints << std::endl;

   // takes in greyscale image
   blackFilterResult = blackFilter(medianFilterResult, 50);

   // Center of Mass calculation
   centerOfMass(blackFilterResult);

   // connected component labeling 
   int numComponents = connectedComponent(blackFilterResult);

   // find robot body center of mass
   findRobotBody(labeledResult, 20, 13);

   waitKey(0);
   return(0);
}

cv::Mat medianFilter(cv::Mat src, int window)
{
   // Resulting filtered image to return
   cv::Mat filteredImage;

   // use OpenCV function medianBlur for median filtering
   medianBlur(src, filteredImage, window);

   // return filtered image
   return filteredImage;
   
}

cv::Mat blackFilter(cv::Mat src, int thresh)
{
   cv::Mat blackOnly;
   // inRange(src, Scalar(230,230,230), Scalar(255, 255, 255), blackOnly);

   // input array is greyscale so just need to use threshold API
   threshold(src, blackOnly, thresh, 255, THRESH_BINARY_INV);
   // FINDME: Changing treshold to make non inverting binary
   // threshold(src, blackOnly, thresh, 255, THRESH_BINARY);

   // show black filtered image
   namedWindow("Black Filter", CV_WINDOW_AUTOSIZE);
   imshow("BlackFilter", blackOnly);

   return blackOnly;
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

std::vector<Point> gatherNeighbors(cv::Mat src, cv::Point pt, int connectivity)
{
   std::vector<Point> neighbors;
   
   // 8 neighbor connectivity
   if (connectivity == 8) {
      // neighbors.push_back(Point(pt.x+1, pt.y));
      // neighbors.push_back(Point(pt.x+1, pt.y+1));
      // neighbors.push_back(Point(pt.x+1, pt.y-1));
      // neighbors.push_back(Point(pt.x, pt.y+1));
      // neighbors.push_back(Point(pt.x, pt.y-1));
      // neighbors.push_back(Point(pt.x-1, pt.y+1));
      // neighbors.push_back(Point(pt.x-1, pt.y));
      // neighbors.push_back(Point(pt.x-1, pt.y-1));
      for (int y = -1; y <= 1; y++) {
         for (int x = -1; x <= 1; x++) {
            // Only want neighbors that are part of the object and nonbackground pixels
            if (src.at<unsigned char>(y,x) != 0) {
               neighbors.push_back(Point(x, y));
            } 
         }
      }
   }
   // 4 neighbor connectivity
   else {
      neighbors.push_back(Point(pt.x+1, pt.y));
      neighbors.push_back(Point(pt.x, pt.y+1));
      neighbors.push_back(Point(pt.x, pt.y-1));
      neighbors.push_back(Point(pt.x-1, pt.y));
   }

   // std::cout << "neighbors: " << neighbors << std::endl;
   // return vector of neighbor points
   return neighbors;
}

void setLabel(cv::Mat src, cv::Mat result, int x, int y, int l) 
{
   // set output image pixel at x,y to be l
   result.at<unsigned char>(y,x) = l;
   
   // check all neighbors of object pixel
   // set labels recursively
   if (src.at<unsigned char>(y+1, x) != 0 && result.at<unsigned char>(y+1, x) == 0) {
      setLabel(src, result, x, y+1, l);
   }
   if (src.at<unsigned char>(y-1, x) != 0 && result.at<unsigned char>(y-1, x) == 0) {
      setLabel(src, result, x, y-1, l);
   }
   if (src.at<unsigned char>(y, x+1) != 0 && result.at<unsigned char>(y, x+1) == 0) {
      setLabel(src, result, x+1, y, l);
   }
   if (src.at<unsigned char>(y, x-1) != 0 && result.at<unsigned char>(y, x-1) == 0) {
      setLabel(src, result, x-1, y, l);
   }
}

int connectedComponent(cv::Mat src)
{
   int numberOfComponents;
   // FINDME: Using labeledResult global var for output
   // cv::Mat result;
   std::vector<Point> neighbors;
   unsigned char label = 20;
  
   // initialize empty image
   labeledResult = Mat::zeros(src.size(), CV_8UC1); 

   // indices starting at 1 to avoid nonexistent neighbor issue
   for (int j = 1; j < src.rows - 1; j++) {
      for (int i = 1; i < src.cols - 1; i++) {
         // Check if pixel is in background or not
         // Check if pixel is unlabled or not
         if (src.at<unsigned char>(j,i) != 0 && (labeledResult.at<unsigned char>(j,i) == 0)) {
            // recursive call...
            setLabel(src, labeledResult, i, j, label);
            label += 20; 
            numberOfComponents++;
         }
      }
   }

   // Show labeled result
   namedWindow("labeled" , CV_WINDOW_AUTOSIZE );
   imshow("labeled", labeledResult );

   std::cout << "Number of components: " << numberOfComponents << std::endl;

   return numberOfComponents;
}

unsigned int calculateArea(cv::Mat src) 
{
   unsigned int area;

   for (int j = 0; j < src.rows; j++) {
      for (int i = 0; i < src.cols; i++ ) {
         area += src.at<unsigned char>(j, i);
      }
   }

   return area;
}

cv::Point centerOfMass(cv::Mat src)
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
   
   std::cout << "Area: " << m00 << std::endl;
   std::cout << "M10: " << m10 << std::endl;
   std::cout << "M01: " << m01 << std::endl;

   xBar = m10 / m00;
   yBar = m01 / m00;
   std::cout << "Point: " << Point(xBar, yBar) << std::endl;

   // Draw circle at center of mass
   // circle(src, Point(xBar, yBar), 6, Scalar(255, 255, 255), 2, 8, 0);
   // namedWindow( "Center of mass", CV_WINDOW_AUTOSIZE );
   // imshow( "Center of mass", src );

   return Point(xBar, yBar);
}

// Find robot body based on connected components
cv::Point findRobotBody(cv::Mat src, int thresholdStep, int numComponents)
{
   cv::Mat result;
   cv::Point COM;
   char windowTitle[100];

   for (int i = 0; i < numComponents; i++) {
      // threshold each component
      unsigned char currentThreshold = thresholdStep + (thresholdStep * i);
      // threshold(src, result, currentThreshold, 255, THRESH_BINARY_INV);
      inRange(src, currentThreshold, currentThreshold + 1, result);
      // bitwise_not(result, result);
      std::cout << "current threshold: " << thresholdStep + (thresholdStep * i) << std::endl;

      sprintf(windowTitle, "%d", i);
      namedWindow(windowTitle, CV_WINDOW_AUTOSIZE);
      imshow(windowTitle, result);

      // check to see if area of object is sufficiently large
      if (calculateArea(result) > 100000) {

         // it's a robot body so calculate center of mass
         COM = centerOfMass(result);
         std::cout << "Robot center of mass: " << COM << std::endl;
      }
   }

   return COM;
}

// blob detection algorithm (not synthesizable)
int blob(cv::Mat src)
{
   int numberOfComponents;
   cv::Mat result;
  
   // initialize empty image
   result = Mat::zeros(src.size(), CV_8UC1); 

   // simple blob detection
   cv::SimpleBlobDetector::Params params;
   // Filter by area
   params.filterByArea = true;
   params.minArea = 150;
   params.filterByCircularity = false;

   // init detector with above params
   SimpleBlobDetector detector(params);
   std::vector<KeyPoint> keypoints;
   detector.detect(src, keypoints);

   // draw detected blobs as red circles
   cv::Mat srcWithBlobs;
   drawKeypoints(src, keypoints, srcWithBlobs, Scalar(0,0,255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
   namedWindow("Blobs", CV_WINDOW_AUTOSIZE);
   imshow("Blobs", srcWithBlobs);
   
   // number of keypoints
   std::cout << keypoints.size() << std::endl;

   return numberOfComponents;
}
