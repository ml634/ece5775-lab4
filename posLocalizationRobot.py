#!/usr/bin/python       #this is server file

from socket import *           #import socket module
import RPi.GPIO as GPIO
import time
import math
import numpy as np 

GPIO.setmode(GPIO.BCM)
GPIO.setup(23, GPIO.OUT)
pwmLeft = GPIO.PWM(23, 100)

GPIO.setup(24, GPIO.OUT)
pwmRight = GPIO.PWM(24, 100)

DEFAULT_SPEED = 15.0

#Defines
noMove = 14        #in percentage for servo PWM
timeInterval = 0.1  #in time second 

#fwd
def goFwd():
    print "going straight"
    pwmLeft.ChangeDutyCycle(17)
    pwmRight.ChangeDutyCycle(11)
    


#right
def goLeft():
    print "steer left"
    pwmLeft.ChangeDutyCycle(17)
    pwmRight.ChangeDutyCycle(noMove-2)
    


#right
def goRight():
    print "steer right"
    pwmLeft.ChangeDutyCycle(noMove+2)
    pwmRight.ChangeDutyCycle(11)
    
#stall
def goStop():
    print "stop"
    pwmLeft.ChangeDutyCycle(0)
    pwmRight.ChangeDutyCycle(0)

    
print "starting"

#initialize servo to be center
pwmLeft.start(DEFAULT_SPEED)
pwmRight.start(DEFAULT_SPEED)

#set up server
HOST = "192.168.137.121"
PORT = 8888

s = socket(AF_INET, SOCK_STREAM)
s.connect((HOST, PORT))
print "socket connected to server"



while True:

	

        data = s.recv(1)
        data = ord(data)
        print data

	if (data < 5):

            if (data == 2 ): goLeft()
            elif (data == 0 ): goRight()
            elif (data == 1) : goFwd()
            elif (data == 3) : goStop()
                    

GPIO.cleanup()
