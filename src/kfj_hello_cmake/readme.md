
## Introduction

This small demo illustrates how to
compile a program using [ament][1].

## Usage

```.sh
git clone https://github.com/csukuangfj/kfj-hello-ros2
cd kfj-hello-ros2
ament build --only-packages kfj_hello_cmake
```

The resulting executable can be found
in directories `build/kfj_hello_cmake/kfj_hello_cmake`
and `install/lib/kfj_hello_cmake/kfj_hello_cmake`.

```.sh
$ build/kfj_hello_cmake/kfj_hello_cmake 
Hello cmake!
```

## Differences between build types ament_cmake and cmake
 - `ament_cmake` requires the package manifest file `package.xml` and it will generate
`<projectName>Config.cmake`
and `<projectName>Config-version.cmake` in the 
installation directory, which can
be used by `find_package`.

 - `cmake` does not require `package.xml`. Furthermore, it
generates neither
`<projectName>Config.cmake`
nor `<projectName>Config-version.cmake`.

[1]: https://github.com/ros2/ros2/wiki/Ament-Tutorial

