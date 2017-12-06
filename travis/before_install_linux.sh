# OSRF Ubuntu dependencies
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
sudo apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

sudo add-apt-repository --yes ppa:fkrull/deadsnakes
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl -y # source with libopenni2
sudo apt-get update -qq
sudo apt-get install build-essential
sudo apt-get install gawk
sudo apt-get install git
sudo apt-get install wget
sudo apt-get install cppcheck
sudo apt-get install libtinyxml-dev
sudo apt-get install freeglut3 freeglut3-dev
sudo apt-get install libxmu-dev libxi-dev

# - sudo apt-get install cmake 
# - sudo apt-get install libopencv-dev 

###########################
## OpenCV 2.4
## commented to speed up the compilation
###########################
#- git clone https://github.com/Itseez/opencv.git
#- cd opencv
#- git checkout 2.4
#- mkdir build
#- cd build
#- cmake -Q -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr ..
#- make -j2
#- sudo make install
#- cd ../..

###########################
## OpenNI
## commented to speed up the compilation
###########################
wget http://com.occipital.openni.s3.amazonaws.com/OpenNI-Linux-x86-2.2.0.33.tar.bz2
#- wget http://com.occipital.openni.s3.amazonaws.com/OpenNI-Linux-x64-2.2.0.33.tar.bz2 
#- tar jxf OpenNI-Linux-x64-2.2.0.33.tar.bz2 
#- cd OpenNI-Linux-x64-2.2/
#- sudo mkdir -p /usr/include/openni2
#- sudo mkdir -p /usr/lib/Drivers
#- sudo cp -r Include/* /usr/include/openni2
#- sudo cp -r Redist/OpenNI2/* /usr/lib/
#- sudo cp -r Redist/libOpenNI2.* /usr/lib/
#- cd
##############################################
# - sudo apt-get install python-empy 
sudo apt-get install python3-all-dev
sudo apt-get install libpython3.5-dev 
# - sudo apt-get install libpython3-dev
# - sudo apt-get install python3-empy 
sudo apt-get install python3-nose 
# - sudo apt-get install python3-pip 
sudo apt-get install python3-setuptools 
# - sudo apt-get install python3-vcstool
# - sudo apt-get install clang-format 
sudo apt-get install pyflakes 
# - sudo apt-get install python3-coverage 
# - sudo apt-get install python3-mock 
# - sudo apt-get install python3-pep8 
sudo apt-get install uncrustify

###########################
## OpenSplice
###########################
#- sudo apt-get install libopensplice64 # from packages.osrfoundation.org

# - sudo apt-get install libboost1.55-all-dev

###########################
## dependencies for FastRTPS
###########################
# - sudo apt-get install libboost-chrono-dev  
# - sudo apt-get install libboost-date-time-dev 
# - sudo apt-get install libboost-program-options-dev 
# - sudo apt-get install libboost-regex-dev 
# - sudo apt-get install libboost-system-dev 
# - sudo apt-get install libboost-thread-dev  