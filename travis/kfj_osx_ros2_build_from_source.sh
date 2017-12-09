
brew update

brew doctor

brew install python3 wget cmake cppcheck tinyxml eigen pcre

gcc --version
g++ --version
cmake --version
python --version

# install dependencies for Fast-RTPS if you are using it
brew install asio tinyxml2

brew install opencv

# install depepndencies for Rviz
brew install qt freetype assimp

# Add the Qt directory to the CMAKE_PREFIX_PATH
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH;/usr/local/opt/qt

python3 -m pip install argcomplete coverage empy flake8 \
    flake8-blind-except flake8-builtins flake8-class-newline \
    flake8-comprehensions flake8-deprecated flake8-docstrings \
    flake8-import-order flake8-quotes mock nose pep8 pydocstyle \
    pyflakes pyparsing pytest pytest-cov pytest-runner pyyaml setuptools vcstool

mkdir -p $HOME/ros2_ws/src
pushd .
cd $HOME/ros2_ws
wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
vcs import src < ros2.repos
cd $HOME/ros2_ws/
src/ament/ament_tools/scripts/ament.py build --build-tests --symlink-install
popd

