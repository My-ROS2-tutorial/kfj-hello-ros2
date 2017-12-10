#!/bin/bash

pushd .

# 1 ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2
# 2 ros2-ardent-package-osx-fastrtps-x86_64.tar.bz2
my_version=1

mkdir -p $HOME/ros2_install
cd $HOME/ros2_install

if [[ ${my_version} == "1" ]]; then
    wget -P /tmp "https://github.com/ros2/ros2/releases/download/release-beta3/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2"

    tar xf /tmp/ros2-beta3-package-osx-fastrtps-x86_64.tar.bz2
fi

if [[ ${my_version} == "2" ]]; then
    wget -P /tmp "https://github.com/ros2/ros2/releases/download/release-ardent/ros2-ardent-package-osx-fastrtps-x86_64.tar.bz2"
    tar xf /tmp/ros2-ardent-package-osx-fastrtps-x86_64.tar.bz2
fi

. $HOME/ros2_install/ros2-osx/setup.bash

popd

