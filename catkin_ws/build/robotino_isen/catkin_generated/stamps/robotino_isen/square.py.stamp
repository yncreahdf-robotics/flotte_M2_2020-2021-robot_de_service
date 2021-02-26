#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from math import radians

class DrawASquare():
    def __init__(self):
        # initiliaze
        rospy.init_node('square', anonymous=False)
        
        self.cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        r = rospy.Rate(10);
        linear = Twist()
        linear.linear.x = 0.45

        rotation = Twist()
        rotation.linear.x = 0
        rotation.angular.z = radians(90);
	count = 0
        while count != 4:
	    rospy.loginfo("Robotino Going Straight")
            for x in range(0,15):
                self.cmd_vel.publish(linear)
                r.sleep()
	    rospy.loginfo("Robotino Turning")
            for x in range(0,15):
                self.cmd_vel.publish(rotation)
		rospy.loginfo(rotation.angular.z)
                r.sleep()            
	    count = count + 1
	    if(count == 4):
                rospy.loginfo("Robotino finished") 
		rospy.sleep(1)
 
if __name__ == '__main__':
    try:
        DrawASquare()
    except:
        rospy.loginfo("node terminated.")
