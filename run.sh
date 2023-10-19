#!/bin/bash

# Source ROS 2 setup (adjust the path if needed)
source /opt/ros/dashing/setup.bash
chmod a+rw /dev/ttyTHS1
sudo lsof -i :12345


cd /home/toor/Desktop/atom_ws/
colcon build

source /usr/share/colcon_cd/function/colcon_cd.sh
export _colcon_cd_root=/opt/ros/dashing/
source /home/toor/Desktop/atom_ws/install/setup.bash
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash


cd /home/toor/Desktop/atom_ws/launch

ros2 launch my_launch_file.launch.py
