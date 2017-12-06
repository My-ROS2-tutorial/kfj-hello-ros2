#!/bin/bash

. ~/ros2_ws/install/local_setup.bash

which ament
ament build

build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 

build/kfj_hello_cmake/kfj_hello_cmake 
