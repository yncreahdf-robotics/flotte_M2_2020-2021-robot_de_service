#!/usr/bin/env python3

import paho.mqtt.client as mqtt
import time
import paho.mqtt.publish as publish

if __name__ == '__main__':


        client = mqtt.Client()
        client.connect("192.168.1.4",1883,60)
       
        client.publish("topic/DonneesRobots", "Hello")



