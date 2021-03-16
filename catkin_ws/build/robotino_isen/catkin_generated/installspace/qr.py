#!/usr/bin/env python2
import pyrealsense2 as rs
import numpy as np
import cv2
from geometry_msgs.msg import Twist
import rospy
from pyzbar import pyzbar
import time

from math import radians

def approchelente():

	global troislent

	if (point[3][1] > point[2][1] + margerotationlent or point[1][1] > point[0][1] + margerotationlent):

		print("lent : tourner a droite")

		move_cmd.angular.z = -0.1
		cmd_vel.publish(move_cmd)
		time.sleep(sleeplent)
		move_cmd.angular.z = 0
		cmd_vel.publish(move_cmd)

		unlent = False


	elif (point[3][1] < point[2][1] - margerotationlent or point[1][1] < point[0][1] - margerotationlent):

		print("lent : tourner a gauche")

		move_cmd.angular.z = 0.1
		cmd_vel.publish(move_cmd)
		time.sleep(sleeplent)
		move_cmd.angular.z = 0
		cmd_vel.publish(move_cmd)

		unlent = False


	else:

		print("lent : arret rotation")

		unlent = True





	if (largeur - point[2][0] > point[3][0] + margetranslationlent):

		print("lent : aller a gauche")

		move_cmd.linear.y = vitesselent
		cmd_vel.publish(move_cmd)
		time.sleep(sleeplent)
		move_cmd.linear.y = 0
		cmd_vel.publish(move_cmd)

		deuxlent = False


	elif (largeur - point[2][0] < point[3][0] - margetranslationlent):

		print("lent : aller a droite")

		move_cmd.linear.y = -vitesselent
		cmd_vel.publish(move_cmd)
		time.sleep(sleeplent)
		move_cmd.linear.y = 0
		cmd_vel.publish(move_cmd)

		deuxlent = False


	else:

		print("lent : translation non")

		deuxlent = True





	if(unlent and deuxlent):

		if(point[2][0] - point[3][0] < distancezoomlent - margezoomlent):

			print("lent : avant")

			move_cmd.linear.x = vitesselent
			cmd_vel.publish(move_cmd)
			time.sleep(sleeplent)
			move_cmd.linear.x = 0
			cmd_vel.publish(move_cmd)

			troislent = False


		elif(point[2][0] - point[3][0] > distancezoomlent + margezoomlent):

			print("lent : arriere")

			move_cmd.linear.x = -vitesselent
			cmd_vel.publish(move_cmd)
			time.sleep(sleeplent)
			move_cmd.linear.x = 0
			cmd_vel.publish(move_cmd)

			troislent = False


		else:

			print("lent : zoom non")

			move_cmd.linear.x = 0

			troislent = True




def approcherapide():

	global unrapide
	global deuxrapide
	global troisrapide


	if (point[3][1] > point[2][1] + margerotationrapide or point[1][1] > point[0][1] + margerotationrapide):

		print("rapide : tourner a droite")

		move_cmd.angular.z = -0.5
		cmd_vel.publish(move_cmd)
		time.sleep(0.2)
		move_cmd.angular.z = 0
		cmd_vel.publish(move_cmd)

		unrapide = False


	elif (point[3][1] < point[2][1] - margerotationrapide or point[1][1] < point[0][1] - margerotationrapide):

		print("rapide : tourner a gauche")

		move_cmd.angular.z = 0.5
		cmd_vel.publish(move_cmd)
		time.sleep(0.2)
		move_cmd.angular.z = 0
		cmd_vel.publish(move_cmd)

		unrapide = False


	else:

		print("rapide : arret rotation")

		unrapide = True





	if (largeur - point[2][0] > point[3][0] + margetranslationrapide):

		print("rapide : aller a gauche")

		move_cmd.linear.y = vitesserapide
		cmd_vel.publish(move_cmd)
		time.sleep(0.2)
		move_cmd.linear.y = 0
		cmd_vel.publish(move_cmd)

		deuxrapide = False


	elif (largeur - point[2][0] < point[3][0] - margetranslationrapide):

		print("rapide : aller a droite")

		move_cmd.linear.y = -vitesserapide
		cmd_vel.publish(move_cmd)
		time.sleep(0.2)
		move_cmd.linear.y = 0
		cmd_vel.publish(move_cmd)

		deuxrapide = False


	else:

		print("rapide : translation non")

		deuxrapide = True





	if(unrapide and deuxrapide):

		if(point[2][0] - point[3][0] < distancezoomrapide - margezoomrapide):

			print("rapide : avant")

			move_cmd.linear.x = vitesserapide
			cmd_vel.publish(move_cmd)
			time.sleep(0.2)
			move_cmd.linear.x = 0
			cmd_vel.publish(move_cmd)

			troisrapide = False


		elif(point[2][0] - point[3][0] > distancezoomrapide + margezoomrapide):

			print("rapide : arriere")

			move_cmd.linear.x = -vitesserapide
			cmd_vel.publish(move_cmd)
			time.sleep(0.2)
			move_cmd.linear.x = 0
			cmd_vel.publish(move_cmd)

			troisrapide = False


		else:

			print("rapide : zoom non")

			move_cmd.linear.x = 0

			troisrapide = True







def qrMain():

	#rospy.init_node('qr')
	global cmd_vel 
	cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
	r = rospy.Rate(1)
	global move_cmd 
	move_cmd = Twist()

	global largeur 
	largeur = 640
	global hauteur
	hauteur = 480


	pipeline = rs.pipeline()
	config = rs.config()
	#config.enable_stream(rs.stream.color, largeur, hauteur, rs.format.bgr8, 30)

	pipeline.start(config)


	global point 
	point = [(0, 0), (0, 0), (0, 0), (0, 0)]

	global unrapide
	unrapide = False
	global deuxrapide
	deuxrapide = False
	global troisrapide
	troisrapide = False
	global unlent
	unlent = False
	global deuxlent
	deuxlent = False
	global troislent
	troislent = False

	global vitesserapide
	vitesserapide = 0.1
	global vitesselent
	vitesselent = 0.0001

	global margerotationrapide
	margerotationrapide = 7
	global margetranslationrapide
	margetranslationrapide = 75
	global margezoomrapide
	margezoomrapide = 10

	global margerotationlent
	margerotationlent = 5
	global margetranslationlent
	margetranslationlent = 35
	global margezoomlent
	margezoomlent = 4

	global distancezoomrapide
	distancezoomrapide = 170
	global distancezoomlent
	distancezoomlent = 200

	global sleeplent
	sleeplent = 0.15

	try:

		while True:

		
			frames = pipeline.wait_for_frames()
			color_frame = frames.get_color_frame()

			if not color_frame:
				continue


			img = np.asanyarray(color_frame.get_data())

			image = pyzbar.decode(img)

			if (len(image)>0):


				for i in range(len(image[0].polygon)):
					if (i==3):
						cv2.line(img, image[0].polygon[i], image[0].polygon[0], color=(255, 0, 0), thickness=5)
					else:
						cv2.line(img, image[0].polygon[i], image[0].polygon[i+1], color=(255, 0, 0), thickness=5)

				if (image[0].polygon[0].y < image[0].polygon[2].y):

					tempx = image[0].polygon[0].x
					tempy = image[0].polygon[0].y
					point = [(image[0].polygon[1].x, image[0].polygon[1].y), (image[0].polygon[2].x, image[0].polygon[2].y), (image[0].polygon[3].x, image[0].polygon[3].y), (tempx, tempy)]


				else:

					point = [(image[0].polygon[0].x, image[0].polygon[0].y), (image[0].polygon[1].x, image[0].polygon[1].y), (image[0].polygon[2].x, image[0].polygon[2].y), (image[0].polygon[3].x, image[0].polygon[3].y)]
	
				cv2.circle(img, point[0], radius = 0, color = (0, 0, 255), thickness = 30)
				cv2.circle(img, point[1], radius = 0, color = (0, 255, 255), thickness = 30)
				cv2.circle(img, point[2], radius = 0, color = (0, 255, 0), thickness = 30)
				cv2.circle(img, point[3], radius = 0, color = (255, 0, 0), thickness = 30)

		



			

				if (unrapide and deuxrapide and troisrapide):

					approchelente()
					time.sleep(0.5)

				else:

					approcherapide()
					time.sleep(0.05)

	 



				if (troislent):
					print(image[0].data)
					cv2.destroyAllWindows()
					move_cmd.angular.z = radians(180)
				        rospy.loginfo("Turn 180")
				        for i in range(0, 28):
						cmd_vel.publish(move_cmd)
						rospy.sleep(0.1)

					break


			#cv2.namedWindow('RealSense', cv2.WINDOW_AUTOSIZE)

			#cv2.imshow('RealSense', img)

			if cv2.waitKey(1) == ord("q"):
				break

	finally:

		pipeline.stop()


#qrMain()
