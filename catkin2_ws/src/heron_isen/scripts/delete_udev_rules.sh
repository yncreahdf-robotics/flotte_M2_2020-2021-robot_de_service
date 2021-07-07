#!/bin/bash

echo "delete remap the device serial port(ttyUSBX) to coulomb_counter_cc75"
echo "sudo rm /lib/udev/rules.d/coulomb_counter_cc75.rules"
sudo rm /lib/udev/rules.d/coulomb_counter_cc75.rules
echo " "
echo "Restarting udev"
echo "sudo service udev reload"
sudo service udev reload
echo "sudo service udev restart"
sudo service udev restart
echo "finish delete"
