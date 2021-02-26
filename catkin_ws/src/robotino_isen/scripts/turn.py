#!/usr/bin/env python
import time
import rospy
import math
import tf

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import Pose, Quaternion
from tf.transformations import quaternion_from_euler

class Turn():
    pose = tuple()
    turnAngle = 45
    def __init__(self):

        pass
#        rospy.init_node('turn')

    def startRotate(self):
        #self.turnAngle = Quaternion(*(quaternion_from_euler(0, 0, self.turnAngle*math.pi/180, axes='sxyz')))
        print("turn")
        currentPose = tf.TransformListener()

        rate = rospy.Rate(1.0)
        count = 0
        while count < 1:
            try:
                (linear, rotation) = currentPose.lookupTransform(
                    '/map', '/base_link', rospy.Time(0))
                self.pose = (linear[0], linear[1], rotation[2] + self.turnAngle.z, rotation[3] + self.turnAngle.w)
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
            count += 1
            rate.sleep()

        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")

        wait = self.client.wait_for_server()
        if not wait:
            rospy.logerr("Action server not available!")
            #rospy.signal_shutdown("Action server not available!")
            return

        rospy.loginfo("Connected to move base server")
        rospy.loginfo("Start moving to " + str(45) + " ...")
        self.movebase_client()

    def active_cb(self):
        rospy.loginfo("Goal pose "+str(1) +
                      " is now being processed by the Action Server...")

    def feedback_cb(self, feedback):
        rospy.loginfo("Feedback for goal pose " +
                      str(1)+" received")

    def done_cb(self, status, result):
        if status == 2:
            rospy.loginfo("Goal pose "+str(1) +
                          " received a cancel request after it started executing, completed execution!")

        if status == 3:
            rospy.loginfo("Goal pose "+str(1)+" reached")
            rospy.loginfo("Sending goal pose " +
                              str(1)+" to Action Server")
          # rospy.loginfo(str(desiredPose))
            return

        if status == 4:
            rospy.loginfo("Goal pose "+str(1) +
                          " was aborted by the Action Server")
            #rospy.signal_shutdown(
             #   "Goal pose "+str(1)+" aborted, shutting down!")
            return

        if status == 5:
            rospy.loginfo("Goal pose "+str(1) +
                          " has been rejected by the Action Server")
            #rospy.signal_shutdown(
              #  "Goal pose "+str(1)+" rejected, shutting down!")
            return

        if status == 8:
            rospy.loginfo("Goal pose "+str(1) +                     
     " received a cancel request before it started execution")

    def movebase_client(self):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = self.pose[0]
        goal.target_pose.pose.position.y = self.pose[1]
        goal.target_pose.pose.orientation.z = self.pose[2]
        goal.target_pose.pose.orientation.w = self.pose[3]
        rospy.loginfo("Sending goal pose " +
                      str(1)+" to Action Server")
        self.client.send_goal(goal, self.done_cb,
                              self.active_cb, self.feedback_cb)
        rospy.spin()


if __name__ == '__main__':
    try:
 #       pass
        t = Turn()
        t.startRotate()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation finished.")

