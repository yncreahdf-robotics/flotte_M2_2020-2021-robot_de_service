#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import tf
import time
import pickle
import sys
import select
import os
if os.name == 'nt':
    import msvcrt
else:
    import tty
    import termios

rospy.init_node('saveCurrentPose')
rospy.loginfo('initialize saveCurrentPose node')


msg = """
Save current coordinate to file !
---------------------------
space key, s : save
d to delete
ctrl+c, q : quit
a to display
"""

f = "/home/nvidia/catkin2_ws/src/heron_isen/scripts/file/poses_map_complete"

def getKey():
    if os.name == 'nt':
        return msvcrt.getch()

    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def loadFile():
    pose = dict()
    if os.path.isfile(f):
        if os.stat(f).st_size == 0:
            with open(f, 'wb') as fichier:
                pickler = pickle.Pickler(fichier)
                pickler.dump(pose)
		fichier.close()

        else:
            with open(f, 'rb') as fichier:
                depickler = pickle.Unpickler(fichier)
                pose = depickler.load()
                print(pose.keys())
                #print(pose.items())
		fichier.close()
    else:
        with open(f, 'wb') as fichier:
	    fichier.close()
            pass
    return(pose)

def display():
    print(pose.keys())
    name = raw_input("Position to display ? ")
    time.sleep(0.5)

    for key, item in pose.items():
        if key == name:
            print(item)
        

def save():
    rate = rospy.Rate(1.0)
    currentPose = tf.TransformListener()
    count = 0
    pose = loadFile()
    while count < 3:
    	try:
		time.sleep(0.5)
        	(linear, rotation) = currentPose.lookupTransform('/map', '/base_link', rospy.Time(0))
		#print(linear)
		#print(rotation)
		#print(linear[0])
		#print(linear[1])
		#print(rotation[2])
    		name = raw_input("Position to save ?  ")
    		#print(str(name))
		time.sleep(0.5)
    		pose[name] = [linear[0], linear[1], rotation[2], rotation[3]]
    		print(pose.keys())
    		#print(pose.items())


    		with open(f, 'wb') as fichier:
        		pickler = pickle.Pickler(fichier)
        		pickler.dump(pose)
			print("current pose " + str(name) + " saved !")
			fichier.close()
	except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
		print("Error in getting current pose !")
		continue
	count += 1
	rate.sleep()


def delete():
    print(pose.keys())
    name = raw_input("Position to delete ? ")
    time.sleep(0.5)
    pose.pop(name, None)

    with open(f, 'wb') as fichier:
        pickler = pickle.Pickler(fichier)
        pickler.dump(pose)
        print(str(name) + " deleted !")
    return

if __name__ == "__main__":
    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)

    pose = loadFile()

    print(msg)
    while(1):
        key = getKey()
        if key == ' ' or key == 's':
            print("ok")
            time.sleep(1)
            save()
        elif key == 'd':
            print("delete")
            time.sleep(1)
            delete()
	elif key == 'a':
	    time.sleep(0.5)
	    display()
        elif key == 'q' or (key == '\x03'):
            time.sleep(0.3)
            break

    if os.name != 'nt':
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
