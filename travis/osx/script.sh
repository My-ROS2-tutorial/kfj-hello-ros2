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

echo "start listener1"
./install/lib/kfj_ros2_listener/listener1 &

echo "start listener2"
./install/lib/kfj_ros2_listener/listener2 &

#ros2 run kfj_ros2_talker talker1
echo "start talker1"
./build/kfj_ros2_talker/talker1 &

echo "start talker2"
./build/kfj_ros2_talker/talker2 &

echo "start server"
./install/lib/kfj_ros2_demo_service_server/server  &

sleep 1

echo "start client"
./install/lib/kfj_ros2_demo_service_client/client  &


# sleep 10 seconds to run the above background processes
sleep 10

