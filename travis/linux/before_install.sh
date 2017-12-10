#!/bin/bash

# install dependencies
# refer to https://github.com/ros2/ros2/wiki/Linux-Install-Binary

gcc --version
g++ --version
g++-4.9 --version
gcc-4.9 --version
sudo rm $(which gcc)
sudo rm $(which g++)
sudo cp $(which g++-4.9) /usr/bin/g++
sudo cp $(which gcc-4.9) /usr/bin/gcc
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
sudo apt-get install -q -y cppcheck
sudo apt-get install -q -y git
sudo apt-get install -q -y libopencv-dev
sudo apt-get install -q -y python3.5
sudo apt-get install -q -y python3-pip
sudo apt-get install -q -y libpython3.5-dev
sudo apt-get install -q -y python-wstools
sudo apt-get install -q -y python3-empy
sudo apt-get install -q -y libyaml-dev
sudo apt-get install -q -y python3-yaml
sudo apt-get install -q -y wget
sudo apt-get install -q -y libtinyxml-dev
sudo apt-get install -q -y python3-nose
sudo apt-get install -q -y pyflakes
sudo apt-get install -q -y uncrustify
sudo apt-get install -q -y locales-all locales
sudo apt-get install -q -y libasio-dev
sudo apt-get install -q -y libtinyxml2-dev
sudo apt-get install -q -y libeigen3-dev

# dependencies for FastRTPS
sudo apt-get install -y libasio-dev libtinyxml2-dev

sudo apt-get update
sudo apt-get install -q -y libboost-thread-dev

sudo pip3 install argcomplete


sudo apt-key adv --keyserver ha.pool.sks-keyservers.net \
                 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
sudo bash -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
sudo apt-get update && sudo apt-get install -q -y libopensplice67

export RMW_IMPLEMENATION=rmw_opensplice_cpp

