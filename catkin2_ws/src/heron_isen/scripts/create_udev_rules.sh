#!/bin/bash

echo "remap the device serial port(ttyUSBX) to coulomb_counter_cc75"
echo "sudo cp `rospack find coulomb_counter_cc75_ros`/scripts/coulomb_counter_cc75.rules  /lib/udev/rules.d"
sudo cp `rospack find coulomb_counter_cc75_ros`/scripts/coulomb_counter_cc75.rules  /lib/udev/rules.d
echo " "
echo "Restarting udev"
echo "sudo service udev reload"
sudo service udev reload
echo "sudo service udev restart"
sudo service udev restart
echo "finish"
