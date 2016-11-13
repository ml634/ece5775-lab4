// Program to filter incoming images of the robot
// Filters include: Median for preprocessing, harris corner detector, and color filtering
// Andrew Palmer (ajp294)
// 10 November 2016

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace cv;
using namespace std;

// Global variables
Mat src, src_gray;
int thresh = 200;
int max_thresh = 255;

char* source_window = "Source image";
char* corners_window = "Corners detected";

// Function header
// harris demo from online
void cornerHarris_demo( int, void* );

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

int connectedComponent(cv::Mat src)
{
   int numberOfComponents;
   cv::Mat result;
  
   // initialize empty image
   result = Mat::zeros(src.size(), CV_8UC1); 

   // First pass through image
   for (int j = 0; j < src.rows; j++) {
      for (int i = 0; i < src.cols; i++) {
         // Check if pixel is in background or not
         if (src.at<unsigned char>(j,i) != 0) {

         }
      }
   }

   return numberOfComponents;
}

cv::Point centerOfMass(cv::Mat src)
{
   // cv::Point COM;
   unsigned int m00, m01, m10; // Moment values
   unsigned int xBar, yBar; // Center of mass coordinates
   // Or just Point(xBar, yBar) when I find them later

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

/** @function cornerHarris_demo */
void cornerHarris_demo( int, void* )
{

  Mat dst, dst_norm, dst_norm_scaled;
  dst = Mat::zeros( src.size(), CV_32FC1 );

  // Detector parameters
  int blockSize = 2;
  int apertureSize = 3;
  double k = 0.04;

  // Detecting corners
  cornerHarris( src_gray, dst, blockSize, apertureSize, k, BORDER_DEFAULT );

  // Normalizing
  normalize( dst, dst_norm, 0, 255, NORM_MINMAX, CV_32FC1, Mat() );
  convertScaleAbs( dst_norm, dst_norm_scaled );

  // Drawing a circle around corners
  for( int j = 0; j < dst_norm.rows ; j++ )
     { for( int i = 0; i < dst_norm.cols; i++ )
          {
            if( (int) dst_norm.at<float>(j,i) > thresh )
              {
               circle( dst_norm_scaled, Point( i, j ), 5,  Scalar(0), 2, 8, 0 );
              }
          }
     }
  // Showing the result
  namedWindow( corners_window, CV_WINDOW_AUTOSIZE );
  imshow( corners_window, dst_norm_scaled );
  // save image
  // imwrite(
}
