
## Introduction

This small demo illustrates how to
compile a program using [ament][1].

## Usage

```.sh
git clone https://github.com/csukuangfj/kfj-hello-ros2
cd kfj-hello-ros2
ament build --only-packages kfj_hello_ament_cmake
```

The resulting executable can be found
in directories `build/kfj_hello_ament_cmake/kfj_hello_ament_cmake`
and `install/lib/kfj_hello_ament_cmake/kfj_hello_ament_cmake`.

```.sh
$ build/kfj_hello_ament_cmake/kfj_hello_ament_cmake 
Hello ament_cmake!
```

[1]: https://github.com/ros2/ros2/wiki/Ament-Tutorial

