#!/bin/bash

pushd .
wget -P /tmp "https://github.com/ros2/ros2/releases/download/release-beta3/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2"
mkdir -p $HOME/ros2_install
cd $HOME/ros2_install
tar xf /tmp/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2
. $HOME/ros2_install/ros2-osx/setup.bash
popd

