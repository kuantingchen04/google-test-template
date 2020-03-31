cmake_minimum_required(VERSION 2.8)
project(gtest_demo)

set(CMAKE_CXX_FLAGS "-std=c++11 -pthread")

add_subdirectory(src)
add_subdirectory(test)
