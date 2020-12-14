#!/usr/bin/env python
import pickle
import os
import time
import rospy
import math

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import Pose, Point, Quaternion

f = "/home/nvidia/catkin2_ws/src/heron_isen/scripts/file/poses_map_complete"
def loadFile():
    pose = dict()
    if os.path.isfile(f):
        if os.stat(f).st_size == 0:
            with open(f, 'wb') as fichier:
                pickler = pickle.Pickler(fichier)
                pickler.dump(pose)

        else:
            with open(f, 'rb') as fichier:
                depickler = pickle.Unpickler(fichier)
                pose = depickler.load()
                print(pose.keys())
                # print(pose.items())
    else:
        with open(f, 'wb'):
            pass
    return(pose)


pose = loadFile()
desiredPose = raw_input("Quelle position ? ")
print(desiredPose)
time.sleep(0.5)
desiredPose = str(desiredPose)
print(pose.get(desiredPose))


class MoveToGoal():

    def __init__(self):
        rospy.init_node('move_to_goal')

        # Create action client
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")
        wait = self.client.wait_for_server(rospy.Duration(5.0))
        if not wait:
            rospy.logerr("Action server not available !")
            rospy.signal_shutdown("Action server not available !")
            return

        rospy.loginfo("Connected to move base server")
        rospy.loginfo("Start moving to " + str(desiredPose) + " ...")
        self.movebase_client()

    def active_cb(self):
        rospy.loginfo("Goal pose " + str(desiredPose) +
                      " is now being processed by the Action Server...")

    def feedback_cb(self, feedback):
        rospy.loginfo("Feedback for goal pose " +
                      str(desiredPose) + " received")

    def done_cb(self, status, result):
        if status == 2:
            rospy.loginfo("Goal pose " + str(desiredPose) +
                          " received a cancel request after it started executing, completed execution !")

        if status == 3:
            rospy.loginfo("Goal pose " + str(desiredPose) + " reached")
            return

        if status == 4:
            rospy.loginfo("Goal pose " + str(desiredPose) +
                          " was aborted by the Action Server")

            rospy.signal_shutdown(
                "Goal pose " + str(desiredPose)+" aborted, shutting down!")
            return

        if status == 5:
            rospy.loginfo("Goal pose " + str(desiredPose) +
                          " has been rejected by the Action Server")

            rospy.signal_shutdown(
                "Goal pose " + str(desiredPose) + " rejected, shutting down!")
            return

        if status == 8:
            rospy.loginfo("Goal pose " + str(desiredPose) +
                          " received a cancel request before it started executing, successfully cancelled!")

    def movebase_client(self):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = pose.get(desiredPose)[0]
        goal.target_pose.pose.position.y = pose.get(desiredPose)[1]
        goal.target_pose.pose.orientation.z = pose.get(desiredPose)[2]
        goal.target_pose.pose.orientation.w = pose.get(desiredPose)[3]
        rospy.loginfo("Sending goal pose " +
                      str(desiredPose) + " to Action Server")
        rospy.loginfo(str(desiredPose))
        self.client.send_goal(goal, self.done_cb,
                              self.active_cb, self.feedback_cb)
        rospy.spin()


if __name__ == '__main__':
    try:
        MoveToGoal()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation finished.")
