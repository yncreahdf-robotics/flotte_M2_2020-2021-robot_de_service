#!/usr/bin/env python

import paho.mqtt.client as mqtt
import paho.mqtt.subscribe as subscribe
import time
import os 
# Callbacks

def on_connect(client, userdata, flags, rc):

        print("Connected with result code "+str(rc))
        if rc==0:
                print("ok")
        else:
                print("no")
        client.subscribe("topic/Ordre", qos=0)
                
def on_disconnect(client, userdata, rc):

        print("Client Got Disconnected")

def on_message(client, userdata, msg):

        print("Yes! i receive the message :" , str(msg.payload))
        print("message received " ,str(msg.payload.decode("utf-8")))
        print("message topic=",msg.topic)
        print("message qos=",msg.qos)
        print("message retain flag=",msg.retain)
	if ((msg.topic=="topic/Ordre") and ((str(msg.payload.decode("utf-8")))=="2")):
		os.system("bash /home/robotino/move.sh")
	if ((msg.topic=="topic/Ordre") and ((str(msg.payload.decode("utf-8")))=="1")):
		os.system("bash /home/robotino/initialisation.sh")
	if ((msg.topic=="topic/Ordre") and ((str(msg.payload.decode("utf-8")))=="3")):
                os.system("bash /home/robotino/carre.sh")

if __name__ == '__main__':
	
        print("programme lance")
        client = mqtt.Client()
        client.connect("192.168.1.5",1883,60)
        client.on_connect = on_connect
        client.on_message = on_message
	
        client.loop_forever()




