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
noMove = 15         #in percentage for servo PWM
timeInterval = 0.1  #in time second 

#fwd
def goFwd():
    print "going straight"
    pwmLeft.ChangeDutyCycle(17)
    pwmRight.ChangeDutyCycle(13)
    


#right
def goRight():
    print "going right"
    pwmLeft.ChangeDutyCycle(17)
    pwmRight.ChangeDutyCycle(noMove)
    


#right
def goLeft():
    print "going left"
    pwmLeft.ChangeDutyCycle(noMove)
    pwmRight.ChangeDutyCycle(13)
    
#stall
def goStop():
    print "stop"
    pwmLeft.ChangeDutyCycle(noMove)
    pwmRight.ChangeDutyCycle(noMove)

    
print "starting"

#initialize servo to be center
pwmLeft.start(DEFAULT_SPEED)
pwmRight.start(DEFAULT_SPEED)

#set up server
HOST = "192.168.137.129"
PORT = 8888
s = socket(AF_INET, SOCK_STREAM)
#s.bind((HOST,PORT))

#s.listen(1)
#conn, addr = s.accept()
#print "connected by: ", addr
#count = 0

s.connect((HOST, PORT))
print "socket connected to server"
#s.sendall('Hello server')


while True:

	#receive command
	#data = conn.recv(1)
	#data = ord(data)

        data = s.recv(1)
        data = ord(data)
        print data

	if (data < 5):

            if (data == 2 ): goLeft()
            elif (data == 0 ): goRight()
            elif (data == 1) : goFwd()
            elif (data == 3) : goStop()
                    

GPIO.cleanup()
