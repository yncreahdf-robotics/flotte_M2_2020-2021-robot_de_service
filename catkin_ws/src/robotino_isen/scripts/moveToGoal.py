#!/usr/bin/env python
import pickle
import os
import time
import rospy
import math
import qr
from turn import Turn
import actionlib
import tf
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import Pose, Quaternion
from tf.transformations import quaternion_from_euler

f = "/home/robotino/catkin_ws/src/robotino_isen/scripts/file/poses_map_complete"

t = Turn()

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

def poseWithFile():
    pose = loadFile()
    desiredPose = raw_input("Quelle position ? ")
    print(desiredPose)
    time.sleep(0.5)
    desiredPose = str(desiredPose)
    print(pose.get(desiredPose))
    m.desiredPose = pose.get(desiredPose)

turnAngle = 180
turnAngle = Quaternion(*(quaternion_from_euler(0, 0, turnAngle*math.pi/180, axes='sxyz')))


class MoveToGoal():
    desiredPose = tuple()
    dernierTopic = ""
    arrived = False
    abort = False
    def __init__(self):
        rospy.init_node('move_to_goal')

    def startMove(self, superviseur=False):
        if superviseur == False:
            poseWithFile()
        print(self.desiredPose)
        self.arrived = False
        self.abort = False
        # Create action client
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")
        wait = self.client.wait_for_server(rospy.Duration(15.0))
        if not wait:
            rospy.logerr("Action server not available !")
            #rospy.signal_shutdown("Action server not available !")
            return

        rospy.loginfo("Connected to move base server")
        rospy.loginfo("Start moving to " + str(self.desiredPose) + " ...")
        self.movebase_client()

    def getCurrentPose(self):
        currentPose = tf.TransformListener()

        rate = rospy.Rate(1.0)
        count = 0
        while count < 1:
            try:
                (linear, rotation) = currentPose.lookupTransform(
                    '/map', '/base_link', rospy.Time(0))
                pose = (linear[0], linear[1], rotation[2], rotation[3])
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
            count += 1
            rate.sleep()
        return pose

    def active_cb(self):
        rospy.loginfo("Goal pose " + str(self.desiredPose) + " is now being processed by the Action Server...")

    def feedback_cb(self, feedback):
        rospy.loginfo("Current pose : " + str(self.getCurrentPose()))

    def done_cb(self, status, result):
        if status == 2:
            rospy.loginfo("Goal pose " + str(self.desiredPose) +
                          " received a cancel request after it started executing, completed execution !")

        if status == 3:
            if (self.dernierTopic == "Bar" or self.dernierTopic == "Recharge"):
                qr.qrMain()
                t.turnAngle = turnAngle
                t.startRotate
                self.arrived = True
            self.arrived = True
            rospy.loginfo("Goal pose " + str(self.desiredPose) + " reached")
            return

        if status == 4:
            rospy.loginfo("Goal pose " + str(self.desiredPose) + " was aborted by the Action Server")
            #rospy.loginfo("difference x : " + str(self.desiredPose[0] - self.getCurrentPose()[0]))
            #rospy.loginfo("difference y : " + str(self.desiredPose[1] - self.getCurrentPose()[1]))

            if ((self.desiredPose[0] - self.getCurrentPose()[0] < 0.60) and (self.desiredPose[1] - self.getCurrentPose()[1] < 0.60)):
                if (self.dernierTopic != "Bar" and self.dernierTopic != "Recharge"):
                    self.arrived = True
                else:
                    self.abort = True
            else:
                self.abort = True
            return

        if status == 5:
            rospy.loginfo("Goal pose " + str(self.desiredPose) +
                          " has been rejected by the Action Server")
            return

        if status == 8:
            rospy.loginfo("Goal pose " + str(self.desiredPose) +
                          " received a cancel request before it started executing, successfully cancelled!")

    def movebase_client(self):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = self.desiredPose[0]
        goal.target_pose.pose.position.y = self.desiredPose[1]
        goal.target_pose.pose.orientation.z = self.desiredPose[2]
        goal.target_pose.pose.orientation.w = self.desiredPose[3]
        rospy.loginfo("Sending goal pose " +
                      str(self.desiredPose) + " to Action Server")
        rospy.loginfo(str(self.desiredPose))
        self.client.send_goal(goal, self.done_cb,
                              self.active_cb, self.feedback_cb)
        #rospy.spin()


if __name__ == '__main__':
    try:
        m = MoveToGoal()
        m.startMove()
    except rospy.ROSInterruptException:
       rospy.loginfo("Navigation finished.")
