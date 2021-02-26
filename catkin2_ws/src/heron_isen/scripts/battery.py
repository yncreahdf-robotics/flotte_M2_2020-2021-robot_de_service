#!/usr/bin/env python3
# coding: utf-8

import rospy

#from coulomb_counter_cc75 import Coulomb_counter
from coulomb_counter_cc75_ros.msg import Coulomb_counter_cc75 as Msg

class Battery:
    battery = 0
    def callback(self, msg):
        self.battery = msg.percentage.value
        #print(msg.percentage.value)
        return msg.percentage.value
    
    def listener(self):
        rospy.init_node('listener', anonymous=True)
        rospy.Subscriber("coulomb_counter_cc75", Msg, self.callback)
        
