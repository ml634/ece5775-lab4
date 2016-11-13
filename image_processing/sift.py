# SIFT example from opencv docs
# Andrew Palmer (ajp294)
# 9 November 2016

import cv2
import numpy as np
import sys

filename = sys.argv[1]
img = cv2.imread(filename)
grey = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Create SIFT object and detect keypoints
sift = cv2.SIFT()
kp = sift.detect(grey, None)

# Draw keypoints on the image
img = cv2.drawKeypoints(grey, kp)
# Draw keypoints on image with size of keypoint and orientation
img = cv2.drawKeypoints(grey, kp, flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)

cv2.imwrite(filename[:-4] + '_sift_keypoints.jpg', img)
