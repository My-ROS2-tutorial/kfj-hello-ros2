#!/bin/bash

# install dependencies
# refer to https://github.com/ros2/ros2/wiki/Linux-Install-Binary

gcc --version
g++ --version

cmake --version
sudo apt-get purge -y cmake
sudo apt-get autoremove

wget -P /tmp https://cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.sh
chmod +x /tmp/cmake-3.5.2-Linux-x86_64.sh
sudo mkdir /opt/cmake
sudo /tmp/cmake-3.5.2-Linux-x86_64.sh --prefix=/opt/cmake --skip-license
sudo ln -sfv /opt/cmake/bin/cmake /usr/bin/cmake

cmake --version

sudo apt-get update
sudo apt-get install -q -y libopencv-core2.4v5
sudo apt-get install -q -y libhighgui2.4
sudo apt-get install -q -y libopencv-imgproc2.4v5
sudo apt-get install -q -y libasio-dev
sudo apt-get install -q -y libeigen3-dev
sudo apt-get install -q -y libtinyxml-dev
sudo apt-get install -q -y libtinyxml2-dev
sudo apt-get install -q -y libcurl4-openssl-dev
sudo apt-get install -q -y libqt5core5a
sudo apt-get install -q -y libqt5gui5
sudo apt-get install -q -y libqt5opengl5
sudo apt-get install -q -y libqt5widgets5
sudo apt-get install -q -y libxaw7-dev
sudo apt-get install -q -y libgles2-mesa-dev
sudo apt-get install -q -y libglu1-mesa-dev
sudo apt-get install -q -y python3-pip
sudo apt-get install -q -y python3-setuptools
sudo apt-get install -q -y python3-yaml
sudo apt-get install -q -y wget

sudo apt-get update
sudo apt-get install -q -y libboost-thread-dev

sudo pip3 install argcomplete

