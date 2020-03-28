cmake_minimum_required(VERSION 2.8)
message(STATUS "Current Dir:  ${CMAKE_CURRENT_SOURCE_DIR}")

project(gtest_demo)

set(CMAKE_CXX_FLAGS "-std=c++11 -pthread")

add_subdirectory(src)
add_subdirectory(test)
