#!/bin/bash

. $HOME/ros2_install/ros2-osx/setup.bash
#ls -l $HOME/ros2_install/*/*/*/*

which ros2
which ament

pwd

ament build

# run the program
build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 
build/kfj_hello_cmake/kfj_hello_cmake 

. install/local_setup.sh

./install/lib/kfj_ros2_listener/listener1 &

#ros2 run kfj_ros2_talker talker1
./build/kfj_ros2_talker/talker1 &

