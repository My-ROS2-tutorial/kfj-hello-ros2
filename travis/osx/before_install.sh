#!/bin/bash

# install dependencies for ROS2

# refer to https://github.com/ros2/ros2/wiki/OSX-Install-Binary

#brew doctor
brew update

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

# OpenCV isn't a dependency of ROS 2, but it is used by some demos.
brew install opencv

# install OpenSSL for DDS-Security
brew install openssl

# install Qt for RViz
brew install qt freetype assimp

python3 -m pip install pyyaml setuptools argcomplete

