#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
import time
import rospy
import math
import tf

import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import Pose, Quaternion
from tf.transformations import quaternion_from_euler
import battery
############################################################
### Programme principal à lancer pour démarrer le projet ###
############################################################


###############
### Imports ###
###############

# Import des fichiers .py propre au projet

#import FonctionsMQTT
import mysql.connector
import IPFinder
import paho.mqtt.client as mqtt

# Import des librairies exterieures au projet

import time
import threading
import Positions




def MoveToGoal():
    rospy.init_node('move_to_goal')
    # Create action client
    global client
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    rospy.loginfo("Waiting for move_base action server...")
    wait = client.wait_for_server(rospy.Duration(5.0))
    if not wait:
        rospy.logerr("Action server not available !")
        rospy.signal_shutdown("Action server not available !")
        return

    rospy.loginfo("Connected to move base server")
    rospy.loginfo("Start moving to " + str(desiredPose) + " ...")
    movebase_client()

def active_cb():
    rospy.loginfo("Goal pose " + str(desiredPose) +
                  " is now being processed by the Action Server...")

def feedback_cb(feedback):
#    rospy.loginfo("Feedback for goal pose " + str(desiredPose) + " received")
    pass

def done_cb(status, result):
    global derniertopic
    print("c'est dans la boucle")
    if status == 2:
        rospy.loginfo("Goal pose " + str(desiredPose) +
                      " received a cancel request after it started executing, completed execution !")

    if status == 3:
        global position
        rospy.loginfo("Goal pose " + str(desiredPose) + " reached")
        publish(ipsuperviseur, port, "Service/Arrived/" + derniertopic, my_ip + "/" + position, 2)

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


def movebase_client():
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = desiredPose[0]
    goal.target_pose.pose.position.y = desiredPose[1]
    goal.target_pose.pose.orientation.z = desiredPose[2]
    goal.target_pose.pose.orientation.w = desiredPose[3]
    rospy.loginfo("Sending goal pose " +
                  str(desiredPose) + " to Action Server")
    rospy.loginfo(str(desiredPose))
    client.send_goal(goal, done_cb,
                          active_cb, feedback_cb)
    #rospy.spin()
    return

##########################
### Variables globales ###
##########################

######################
### Initialisation ###
######################


############
### Defs ###
############



##########################
### Variables globales ###
##########################

#	Robot retrieves his own IP
my_ip=IPFinder.get_my_ip()

#	TCP port used for MQTT
port = 1883
desiredPose = []
position = ""

derniertopic=""

turnAngle = 45
turnAngle = Quaternion(*(quaternion_from_euler(0, 0, turnAngle*math.pi/180, axes='sxyz')))

#	Determines the supervisor's IP using the hosts file
hosts = open('/etc/hosts','r')
for line in hosts:
	try:
		if line.split()[1] == "supIP":
			ipsuperviseur = line.split()[0]
	except IndexError:
		pass

###	ROBOTS VARIABLES     ###
type_robot="heron"
etat_robot="libre"


######################
### Initialisation ###
######################


############
### Defs ###
############

def on_connect(client, userdata, flags, rc):

	print("Connected with result code "+str(rc))
	if rc==0:
		print("connection ok")
	else:
		print("connection no")


def on_disconnect(client, userdata, rc):

	print("Client Got Disconnected")


def on_message(client, userdata, msg):

	global position
	global desiredPose
	global derniertopic
	global flotte_db

	print("Yes! i receive the message :" , str(msg.payload))
	#print("message received ", msg.payload.decode("utf-8"))
        #with open('data.json', 'w') as f:
        #json.dumps(msg.payload.decode("utf-8"))
	print("message topic=",msg.topic)
	#print("message qos=",msg.qos)
	#print("message retain flag=",msg.retain)

	print(msg.topic.split("/")[0])
	print(msg.payload.decode("utf-8").split("/")[0])
	if (msg.topic.split("/")[0]=="Service" and msg.payload.decode("utf-8").split("/")[0]==my_ip):
		global etat_robot
		etat_robot="occupe"

		if (msg.topic.split("/")[1]=="Go"):
			derniertopic=msg.topic.split("/")[2]

			position = msg.payload.decode("utf-8").split("/")[1]

			#on cherche les coordonnées de la position donnée

			print(position)
			pose=Positions.get_Pose(flotte_db,position)
			print(pose)

			desiredPose = pose[0]
			print(desiredPose)
			MoveToGoal()


		if (msg.topic.split("/")[1]=="Turn"):
			rospy.init_node('move_to_goal')

			pose = (0, 0, 0, 0)

			currentPose = tf.TransformListener()

			rate = rospy.Rate(1.0)
			count = 0
			while count < 1:
				try:
					(linear, rotation) = currentPose.lookupTransform('/map', '/base_link', rospy.Time(0))
					pose = (linear[0], linear[1], rotation[2] + turnAngle.z, rotation[3] + turnAngle.w)
				except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
					continue
				count += 1
				rate.sleep()

			#on cherche les coordonnées de la position donnée

			desiredPose = pose
			print(desiredPose)
			MoveToGoal()


	if (msg.topic=="Ping/Feedback" and msg.payload.decode("utf-8").split("/")[0]==my_ip):
		print("boucle feedback")
		if msg.payload.decode("utf-8").split("/")[1] == "No":
			print("boucle feedback no")
			publish(ipsuperviseur, port, "Initialisation/Envoi", my_ip + "/" + type_robot, 2)

			flotte_db=mysql.connector.connect(
				host=ipsuperviseur,
				database='flotte_db',
				user='robot',
				password='robot'
			)



#Appel d'une fonction qui permet de recevoir un message

def subscribe(ip, port, topic, qos):

	global client
	client = mqtt.Client()

	client.on_connect = on_connect
	client.on_message = on_message
	client.on_disconnect = on_disconnect
	client.connect(ip,port,65535)
	client.subscribe(topic, qos)
	client.loop_start()
	print("subscribed to "+topic)


#Appel d'une fonction qui permet d'envoyer un message

def publish(ip, port, topic, message, qos):

	client2 = mqtt.Client()

	client2.connect(ip,port,65535)
	client2.loop_start()
	client2.publish(topic, message, qos)
	print("message sent on "+topic)





from coulomb_counter_cc75 import Coulomb_counter
from coulomb_counter_cc75_ros.msg import Coulomb_counter_cc75 as Msg

def callback(msg):
    print(msg.percentage.value)
    return msg.percentage.value
    
def listener():

    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("coulomb_counter_cc75", Msg, callback)
    rospy.spin()


def pingRobot():

	threading.Timer(10, pingRobot).start()

	print ("Envoi du ping :", my_ip+"/"+str(batterie_robot)+"/"+chargeur_robot)

	publish(ipsuperviseur, port, "Robot/Ping", my_ip+"/"+str(batterie_robot)+"/"+chargeur_robot, 2)


def send_etat():
	publish(ipsuperviseur,port,"Robot/Etat", my_ip+"/"+etat_robot,2)

###################################
###	PROGRAMME PRINCIPAL	###
###################################


###	CONNECTS TO DATABASE	###
#       publish his IP and type separated by a / on Initialisation/Envoi
publish(ipsuperviseur, port, "Initialisation/Envoi", my_ip + "/" + type_robot, 2)

pingRobot()

flotte_db=mysql.connector.connect(
	host=ipsuperviseur,
	database='flotte_db',
	user='robot',
	password='robot'
)

#	subscribe to Ordre/Envo - waits for orders
subscribe(ipsuperviseur, port, "Ping/Feedback", 2)


client2 = mqtt.Client()

client2.on_connect = on_connect
client2.on_message = on_message
client2.on_disconnect = on_disconnect
client2.connect(ipsuperviseur,port,60)
client2.subscribe("Service/#", 2)
client2.loop_forever()
print("subscribed to "+"Service/#")



while(1):
	time.sleep(10)

