# Simple corner detection program using harris corner detector
# Andrew Palmer (ajp294)
# 8 November 2016
# From openCV python tutorials for harris features

import cv2
import numpy as np

directory = "photos/"
filename = "robot_test_image.jpg"
path = directory + filename
print(path)
 
img = cv2.imread(directory + filename)
grey = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
grey = np.float32(grey)

dst = cv2.cornerHarris(grey, 2, 3, 0.04)

# result dilated for marking the corners, not important
dst = cv2.dilate(dst, None)

# Threshold for optimal value, it may vary depending on the image
img[dst>0.01*dst.max()] = [0,0,255]

cv2.imshow('dst', img)
k = cv2.waitKey(0) & 0xFF
if k == 27: 
   # Exit on escape key press
   cv2.destroyAllWindows()
elif k == ord('q'):
   # Also exit on q key
   cv2.destroyAllWindows()
