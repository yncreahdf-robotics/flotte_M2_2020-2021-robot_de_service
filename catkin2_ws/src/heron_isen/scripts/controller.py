#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from std_msgs.msg import Float32 
from math import pi, atan2, sqrt
import os

import sys


# This ROS Node converts Joystick inputs from the joy node
# into commands for Heron

# Receives joystick messages (subscribed to Joy topic)
# then converts the joysick inputs into Twist commands
# axis 1 aka left stick vertical controls linear speed
# axis 0 aka left stick horizonal controls linear speed
# axis 3 aka right stick horizonal controls angular speed

counter = 0

def callback(data):
    twist = Twist()
    twist.linear.x = data.axes[1] * 0.40 #robot linear speed
    twist.linear.y = data.axes[0] * 0.40
    twist.angular.z = data.axes[3] * (pi/2)
    global counter

   # you need to press both LT and RT from Xbox controller to initialize
    if(counter == 0):
        if ((data.axes[2] == 0) and (data.axes[5]== 0)):
           
            counter=0
        elif ((data.axes[2] == -1) and (data.axes[5]== -1)) : 
            counter+=1
    
    # if(data.axes[7] < 0):
    #     twist.linear.x = 0.44
    # if(data.axes[7] > 0):
    #     twist.linear.x = -0.44
    # if(data.axes[6] < 0):
    #     twist.linear.y = 0.44
    # if(data.axes[6] > 0):
    #     twist.linear.y = -0.44

    # if(data.axes[2] > 0 or data.axes[5] > 0):
    #     twist.linear.x = 0
    #     twist.linear.y = 0
    #     twist.angular.x = 0
    
    #print('x: ', twist.linear.x, ' y: ', twist.linear.y, ' a: ', twist.angular.z * 360 / (2*pi))
    pub.publish(twist)


# Intializes everything
def start():
     # starts the node
    rospy.init_node('controller')

    # publishing to "Heron/cmd_vel" to control Heron
    global pub
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)

    # subscribed to joystick inputs on topic "joy"
    rospy.Subscriber("joy", Joy, callback)   
    rospy.spin()

if __name__ == '__main__':
    start()
    
