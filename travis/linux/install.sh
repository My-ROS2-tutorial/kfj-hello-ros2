#!/bin/bash

# refer to https://github.com/ros2/ros2/wiki/Linux-Install-Binary

wget -P /tmp "https://github.com/ros2/ros2/releases/download/release-beta3/ros2-beta3-package-linux-fastrtps-x86_64.tar.bz2"

mkdir -p $HOME/ros2_install
cd $HOME/ros2_install
tar xf /tmp/ros2-beta3-package-linux-fastrtps-x86_64.tar.bz2

