cmake_minimum_required(VERSION 3.5)
project(kfj_hello_cmake)

# Default to C++11
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 11)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()


add_executable(${PROJECT_NAME} main.cpp)

install(TARGETS ${PROJECT_NAME}
  DESTINATION lib/${PROJECT_NAME})
