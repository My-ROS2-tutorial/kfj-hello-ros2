#!/bin/bash

which ros2
which ament

pwd

ament build

# run the program
build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 
build/kfj_hello_cmake/kfj_hello_cmake 

. install/local_setup.sh
ros2 run kfj_ros2_talker talker1

