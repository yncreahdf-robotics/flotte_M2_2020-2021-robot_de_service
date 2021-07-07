#!/usr/bin/env python3
# coding: utf-8


from os import system
#system("python3 -m pip install --user coulomb_counter_cc75 rospkg")
#system("python3 -m pip install --user --upgrade coulomb_counter_cc75 rospkg")

from rospy import init_node, Subscriber, Publisher, is_shutdown, get_param, has_param

from coulomb_counter_cc75 import Coulomb_counter
from coulomb_counter_cc75_ros.msg import Coulomb_counter_cc75 as Msg


paramStr = "/coulomb_counter_cc75_ros/coulomb_counter_cc75_manager/portUSB"
defaultPort = "/dev/coulomb_counter_cc75"


class Coulomb_counter_ROS(Coulomb_counter):
	def __init__(self, port):
		Coulomb_counter.__init__(self, port)
		self.initROS()

	def initROS(self):
		init_node("coulomb_counter_cc75_manager")
		self.publisher = Publisher("coulomb_counter_cc75", Msg, queue_size=10)

		self.msg = Msg()
	
	
	def onUpdate(self):
		if is_shutdown():
			self.stop()
		for data in self:
			if data["name"] not in ("First byte", "Check sum"):
				if "value" in data.keys():
					getattr(self.msg, data["name"].lower().replace(" ", "_")).value = data["value"]
				else:
					getattr(self.msg, data["name"].lower().replace(" ", "_")).value = None
				getattr(self.msg, data["name"].lower().replace(" ", "_")).unit = data["unit"]
		self.msg.power.value = round(self.msg.voltage.value * self.msg.current.value, 2)
		self.msg.power.unit = "W"
		self.publisher.publish(self.msg)


if __name__ == "__main__":
	coulomb_counter = Coulomb_counter_ROS(defaultPort
		#get_param(paramStr) if has_param(paramStr) else defaultPort
	)
	try:
		coulomb_counter.start()
		coulomb_counter.join()
	except KeyboardInterrupt:
		pass
	finally:
		coulomb_counter.stop()
