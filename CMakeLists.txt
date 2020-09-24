cmake_minimum_required(VERSION 2.8)
project(gtest_demo)

set(CMAKE_CXX_FLAGS "-std=c++11 -pthread")

# GTest
set(gtest_SOURCE_DIR ${CMAKE_SOURCE_DIR}/thirdparty/googletest/googletest)
set(gtest_build_include_dirs
    "${gtest_SOURCE_DIR}/include"
    "${gtest_SOURCE_DIR}")
include_directories(${gtest_build_include_dirs})
add_library(gtest ${gtest_SOURCE_DIR}/src/gtest-all.cc)
add_library(gtest_main ${gtest_SOURCE_DIR}/src/gtest_main.cc)
target_link_libraries(gtest_main PUBLIC gtest)

add_subdirectory(src)
add_subdirectory(test)
