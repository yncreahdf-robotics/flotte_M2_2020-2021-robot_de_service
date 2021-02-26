#!/usr/bin/env python
import rospy
import math
import pickle
import os
import time

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import Pose, Point, Quaternion
from tf.transformations import quaternion_from_euler
import tf

f = "/home/robotino/catkin_ws/src/robotino_isen/scripts/file/poses_map_complete"


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
poseList = list()

class ReturnTrip():
    pose_count = 0
    def __init__(self):

        rospy.init_node('return_trip')
        pose_1 = (pose.get(desiredPose)[0], pose.get(desiredPose)[
                  1], pose.get(desiredPose)[2], pose.get(desiredPose)[3])

        currentPose = tf.TransformListener()

        rate = rospy.Rate(1.0)
        count = 0
        while count < 1:
            try:
                (linear, rotation) = currentPose.lookupTransform(
                    '/map', '/base_link', rospy.Time(0))
                pose_2 = (linear[0], linear[1], rotation[2], rotation[3])
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
            count += 1
            rate.sleep()

        poseList.append(pose_1)
        poseList.append(pose_2)

        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")

        wait = self.client.wait_for_server()
        if not wait:
            rospy.logerr("Action server not available!")
            rospy.signal_shutdown("Action server not available!")
            return

        rospy.loginfo("Connected to move base server")
        rospy.loginfo("Start moving to " + str(desiredPose) + " ...")
        self.movebase_client()

    def active_cb(self):
        rospy.loginfo("Goal pose "+str(self.pose_count+1) +
                      " is now being processed by the Action Server...")

    def feedback_cb(self, feedback):
        rospy.loginfo("Feedback for goal pose " +
                      str(self.pose_count+1)+" received")

    def done_cb(self, status, result):
        self.pose_count += 1
        if status == 2:
            rospy.loginfo("Goal pose "+str(self.pose_count) +
                          " received a cancel request after it started executing, completed execution!")

        if status == 3:
            rospy.loginfo("Goal pose "+str(self.pose_count)+" reached")
            if self.pose_count < len(poseList):
		self.movebase_client()
                rospy.loginfo("Sending goal pose " +
                              str(self.pose_count+1)+" to Action Server")
                # rospy.loginfo(str(desiredPose))
            else:
                rospy.loginfo("Final goal pose reached!")
                rospy.signal_shutdown("Final goal pose reached!")
                return

        if status == 4:
            rospy.loginfo("Goal pose "+str(self.pose_count) +
                          " was aborted by the Action Server")
            rospy.signal_shutdown(
                "Goal pose "+str(self.pose_count)+" aborted, shutting down!")
            return

        if status == 5:
            rospy.loginfo("Goal pose "+str(self.pose_count) +
                          " has been rejected by the Action Server")
            rospy.signal_shutdown(
                "Goal pose "+str(self.pose_count)+" rejected, shutting down!")
            return

        if status == 8:
            rospy.loginfo("Goal pose "+str(self.pose_count) +
                          " received a cancel request before it started executing, successfully cancelled!")

    def movebase_client(self):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = poseList[self.pose_count][0]
        goal.target_pose.pose.position.y = poseList[self.pose_count][1]
        goal.target_pose.pose.orientation.z = poseList[self.pose_count][2]
        goal.target_pose.pose.orientation.w = poseList[self.pose_count][3]
        rospy.loginfo("Sending goal pose " +
                      str(self.pose_count+1)+" to Action Server")
        rospy.loginfo(str(desiredPose))
        self.client.send_goal(goal, self.done_cb,
                              self.active_cb, self.feedback_cb)
        rospy.spin()


if __name__ == '__main__':
    try:
        ReturnTrip()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation finished.")
