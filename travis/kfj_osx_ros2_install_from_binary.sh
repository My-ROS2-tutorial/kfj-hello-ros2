#!/bin/bash

brew update

brew doctor

brew install python3 wget cmake cppcheck tinyxml eigen pcre
# brew upgrade cmake
# pip3 install --upgrade pip setuptools wheel

# install asio and tinyxml2 for Fast-RTPS
brew install asio tinyxml2

gcc --version
g++ --version
cmake --version
python --version
python3 --version
which python
which python3

# OpenCV isn't a dependency of ROS 2, but it used by some demos.
brew install opencv

# install OpenSSL for DDS-Security
brew install openssl

# install Qt for RViz
brew install qt freetype assimp

python3 -m pip install pyyaml setuptools argcomplete

pushd .
cd $HOME
wget "https://github.com/ros2/ros2/releases/download/release-beta3/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2"
mkdir -p $HOME/ros2_install
cd $HOME/ros2_install
tar xf $HOME/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2
. $HOME/ros2_install/ros2-osx/setup.bash
popd

pwd

