#!/bin/bash
# When moving start.sh to a new location, racecar.service in /lib/systemd/system
# must be updated with the correct path
export ROS_IP=racecar
export ROS_HOSTNAME=racecar
export ROS_MASTER_URI=http://$ROS_HOSTNAME:11311

source /opt/ros/eloquent/setup.bash
source /home/racecar/racecar_ws/install/setup.bash
source /home/racecar/racecar_ws/install/local_setup.bash

ros2 launch racecar_mn teleop.launch.py
