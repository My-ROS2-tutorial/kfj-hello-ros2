#!/bin/bash

. $HOME/ros2_install/ros2-osx/setup.bash
#ls -l $HOME/ros2_install/*/*/*/*

which ros2
which ament

pwd

ament build --only-packages kfj_hello_ament_cmake kfj_hello_cmake

# run the program
./install/bin/kfj_hello_ament_cmake 
./install/bin/kfj_hello_cmake

. install/local_setup.sh

ament build --only-packages kfj_ros2_listener kfj_ros2_talker
echo "start listener1"
./install/bin/listener1 &

echo "start listener2"
./install/bin/listener2 &

#ros2 run kfj_ros2_talker talker1
echo "start talker1"
./install/bin/talker1 &

echo "start talker2"
./install/bin/talker2 &

sleep 10

ament build --only-packages kfj_ros2_talker_listener
echo "start talker and listener"
./install/bin/talker-and-listener &
sleep 10

ament build --only-packages kfj_ros2_demo_service_interface \
    kfj_ros2_demo_service_client \
    kfj_ros2_demo_service_server

echo "start server"
./install/bin/server  &

sleep 1

echo "start client"
./install/bin/client  &

# sleep 10 seconds to run the above background processes
sleep 10

