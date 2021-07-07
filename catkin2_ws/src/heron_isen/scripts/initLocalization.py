#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from math import radians

class initLocalization():
    def __init__(self):
        # initiliaze
        rospy.init_node('init_localization', anonymous=False)

        self.cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        r = rospy.Rate(10);
        linear = Twist()
        linear.linear.x = 0.4

        rotation = Twist()
        rotation.linear.x = 0
        rotation.angular.z = radians(20);

        repetition = 8
        count = 0
        while count != repetition:
            rospy.loginfo("Going Straight")
            #for x in range(0,50):
                #self.cmd_vel.publish(linear)
                #r.sleep()
            rospy.loginfo("Turning")
            for x in range(0,38):
                self.cmd_vel.publish(rotation)
                rospy.loginfo(rotation.angular.z)
                r.sleep()            
            count += 1
            if(count == repetition):
                rospy.loginfo("Robotino finished") 
                rospy.sleep(1)
 
if __name__ == '__main__':
    try:
        initLocalization()
    except:
        rospy.loginfo("node terminated.")



