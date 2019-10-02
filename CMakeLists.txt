cmake_minimum_required(VERSION 2.8)
message(STATUS "Current Dir:  ${CMAKE_CURRENT_SOURCE_DIR}")

project(gtest_demo)

set(CMAKE_CXX_FLAGS "-std=c++11 -pthread")

#GTEST_INCLUDE_DIR
set(GTEST_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/gtest/include)

# GTEST_LIBS
set(gtest ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/gtest/lib/libgtest.a)
set(gtest_main ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/gtest/lib/libgtest_main.a)

include_directories(${GTEST_INCLUDE_DIR})

add_subdirectory(src)
add_subdirectory(gtest)
