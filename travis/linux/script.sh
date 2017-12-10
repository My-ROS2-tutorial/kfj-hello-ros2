#!/bin/bash

export RMW_IMPLEMENATION=rmw_opensplice_cpp

. $HOME/ros2_install/ros2-linux/setup.bash
#ls -l $HOME/ros2_install/*/*/*/*

which ros2
which ament

pwd

ament build --symlink-install

# run the program
build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 
build/kfj_hello_cmake/kfj_hello_cmake 

. install/local_setup.sh
ros2 run kfj_ros2_talker talker1

