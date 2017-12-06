# refer to https://github.com/ros2/ros2/wiki/Linux-Development-Setup

python --version

sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116


sudo apt-get update -qq


cmake --version
# install cmake
sudo apt-get purge -y cmake # remove the default version
sudo apt-get autoremove
# sudo apt-get install -y -qq cmake # the default version is outdated!

mkdir ~/temp
pushd .
cd ~/temp
 wget https://cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.sh
chmod +x cmake-3.5.2-Linux-x86_64.sh

sudo mkdir /opt/cmake
sudo ./cmake-3.5.2-Linux-x86_64.sh --prefix=/opt/cmake --skip-license
sudo ln -s /opt/cmake/bin/cmake /usr/bin/cmake
#rm -v cmake-3.5.2-Linux-x86_64.sh
popd

cmake --version


sudo apt-get install -y -qq git wget
#sudo -E apt-get -yq --no-install-suggests --no-install-recommends --force-yes install g++-4.9 gcc-4.9
sudo apt-get install -y -qq build-essential
gcc --version
g++ --version
sudo rm -v `which gcc`
sudo rm -v `which g++`
sudo ln -sfv `which gcc-4.9`  /usr/bin/gcc
sudo ln -sfv `which g++-4.9`  /usr/bin/g++

gcc --version
g++ --version

#apt-cache policy python3*
sudo apt-get install python3-dev
sudo apt-get install python3.6-dev
sudo apt-get install python3-all-dev
sudo apt-get install libpython3-dev 
sudo apt-get install libpython3.6-dev 
sudo apt-get install python3-empy 
sudo apt-get install python3-dev python3-pip python3-tk python3-lxml python3-six

sudo apt-get install -y -qq  python-empy python3-nose python3-pip python3-pyparsing python3-setuptools python3-vcstool python3-yaml 


which python
deactivate
which python
echo "system site package: before"
pip list
sudo python3 -m pip uninstall -y nose # required by rcutils. The installed version is nose 1.3.7
sudo python3 -m pip install --upgrade nose==1.3.1 # required by rcutils. The installed version is nose 1.3.7
echo "system site package: after"
pip list
source ~/virtualenv/python3.5/bin/activate
echo "user site package: before"
python3 -m pip list
python3 -m pip uninstall -y nose # required by rcutils. The installed version is nose 1.3.7
python3 -m pip install --upgrade nose==1.3.1 # required by rcutils. The installed version is nose 1.3.7
python3 -m pip install empy
echo "user site package: after"
pip list

which python
python --version


sudo apt-get install -y -qq cppcheck libopencv-dev libeigen3-dev
sudo apt-get install -y -qq libtinyxml-dev

# dependencies for testing
sudo apt-get install -y -qq clang-format pydocstyle # has problems
sudo apt-get install -y -qq pyflakes python3-coverage python3-mock python3-pep8 uncrustify

# Install argcomplete for command-line tab completion from the ROS2 tools.
# Install from pip rather than from apt-get because of a bug in the Ubuntu 16.04 version of argcomplete:
sudo python3 -m pip install argcomplete

# additional testing dependencies from pip (because not available on ubuntu 16.04)
sudo python3 -m pip install flake8 flake8-blind-except flake8-builtins flake8-class-newline flake8-comprehensions flake8-deprecated flake8-docstrings flake8-import-order flake8-quotes pytest pytest-cov pytest-runner

# dependencies for FastRTPS
sudo apt-get install -y -qq libasio-dev

# Preparing to unpack .../libtinyxml2-dev_0~git20120518.1.a2ae54e-1_amd64.deb ...
# sudo apt-get install -y -qq libasio-dev libtinyxml2-dev
sudo apt-get install -y -qq libtinyxml2-dev=2.1.0-1~ubuntu14.04.1

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
vcs-import src < ros2.repos

cd ~/ros2_ws/
src/ament/ament_tools/scripts/ament.py build --build-tests --symlink-install

