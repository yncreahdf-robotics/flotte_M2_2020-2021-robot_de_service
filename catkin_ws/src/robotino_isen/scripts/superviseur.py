#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
from math import radians
import time
import rospy
import math
import tf
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose, Quaternion
from tf.transformations import quaternion_from_euler

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
import Robot
from moveToGoal import MoveToGoal
from turn import Turn

m = MoveToGoal()
t = Turn()

desiredPose = []
position = ""

derniertopic=""
nombreTurn = 0
s = True
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

#	Determines the supervisor's IP using the hosts file
hosts = open('/etc/hosts','r')
for line in hosts:
	try:
		if line.split()[1] == "supIP":
			ipsuperviseur = line.split()[0]
	except IndexError:
		pass

###	ROBOTS VARIABLES     ###
type_robot="Robotino"
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
	subscribe(ipsuperviseur, port, "Service/#", 2)
	subscribe(ipsuperviseur, port, "Ping/Feedback", 2)



def on_message(client, userdata, msg):

	global position
	global desiredPose
	global derniertopic
	global s
	global nombreTurn
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
			if (s == True):
				derniertopic = msg.topic.split("/")[2]
				s = False
			#derniertopic=msg.topic.split("/")[2]

			actual_position=Robot.get_robot_data(my_ip)[0][2]
			print("actual : " +str(actual_position))
			position = msg.payload.decode("utf-8").split("/")[1]
			#if (actual_position == Positions.get_Pose_by_name("Bar/"+my_ip) or actual_position == Positions.get_Pose_by_name("Recharge/"+my_ip)):
			if (nombreTurn > 0):
				move_cmd = Twist()
				r = rospy.Rate(10) 
				cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
				move_cmd.angular.z = radians(45)
				rospy.loginfo("nombreTurn " + str(nombreTurn))
				for i in range(0, (8-nombreTurn)*7):
					cmd_vel.publish(move_cmd)
					r.sleep()
					nombreTurn = 0

			if (derniertopic == "Bar" or derniertopic == "Recharge"):

				#on cherche les coordonnées de la position donnée
				cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
				r = rospy.Rate(10)
        			linear = Twist()
        			linear.linear.x = 0.3

				rospy.loginfo("Going Straight")
            			for x in range(0,10):
                			cmd_vel.publish(linear)
                			r.sleep()
			derniertopic=msg.topic.split("/")[2]
			print(position)
			pose=Positions.get_Pose(position)
			print(pose)
                        m.dernierTopic = derniertopic
			m.desiredPose = pose[0]
			m.startMove(True)
			while (True):
				if (m.arrived == True):
					rospy.loginfo("ok je publie que je suis arrive")
					publish(ipsuperviseur, port, "Service/Arrived/" + derniertopic, my_ip + "/" + position, 2)
					break
				if (m.abort == True):
					print("sos je suis bloque")
					publish(ipsuperviseur, port, "Service/Error",  my_ip + "/" + position, 2)
					break

		if (msg.topic.split("/")[1]=="Turn"):
			nombreTurn+=1
			turnAngle = 45
			turnAngle = Quaternion(*(quaternion_from_euler(0, 0, turnAngle*math.pi/180, axes='sxyz')))
			move_cmd = Twist()
			#t.turnAngle = turnAngle
			#t.startRotate()
			r = rospy.Rate(10) 
			cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
			move_cmd.angular.z = radians(45)
 			rospy.loginfo("ok je tourne de 45 deg")
			for i in range(0, 7):
				cmd_vel.publish(move_cmd)
				r.sleep()

	if (msg.topic=="Ping/Feedback" and msg.payload.decode("utf-8").split("/")[0]==my_ip):
		print("boucle feedback")
		if msg.payload.decode("utf-8").split("/")[1] == "No":
			print("boucle feedback no")
			publish(ipsuperviseur, port, "Initialisation/Envoi", my_ip + "/" + type_robot, 2)





	
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


def pingRobot():

	threading.Timer(10, ping).start()
def ping():
	while(1):
		print ("Envoi du ping")

		publish(ipsuperviseur, port, "Robot/Ping", my_ip, 2)
		time.sleep(10)

def send_etat():
	publish(ipsuperviseur,port,"Robot/Etat", my_ip+"/"+etat_robot,2)

###################################
###	PROGRAMME PRINCIPAL	###
###################################


###	CONNECTS TO DATABASE	###
#       publish his IP and type separated by a / on Initialisation/Envoi
publish(ipsuperviseur, port, "Initialisation/Envoi", my_ip + "/" + type_robot, 2)

pingRobot()


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

