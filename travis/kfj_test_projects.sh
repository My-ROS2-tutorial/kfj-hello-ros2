#!/bin/bash

which ros2
#my_ros=$(dirname $(which ros2))

ls -l $HOME/ros2_install/*/*/*

pwd
#. $HOME/ros2_ws/install/setup.bash
. $HOME/ros2_install/ros2-osx/setup.bash

which ament
ament build

build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 

build/kfj_hello_cmake/kfj_hello_cmake 

