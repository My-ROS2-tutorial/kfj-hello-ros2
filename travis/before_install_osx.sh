# ROS 2 deps
brew tap osrf/ros2
brew tap ros/deps
brew tap homebrew/science

brew update
# brew install cmake # this install cmake 3.0

brew outdated cmake
brew upgrade cmake

brew install cppcheck gtest
brew install python3
brew install gawk

# brew install git # already installed
# brew install boost #already comes installed
# brew install wget #already comes installed
