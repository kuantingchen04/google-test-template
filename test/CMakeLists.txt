include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/thirdparty/gtest-linux/include)

# GTEST_LIBS
set(gtest ${CMAKE_SOURCE_DIR}/thirdparty/gtest-linux/lib/libgtest.a)
set(gtest_main ${CMAKE_SOURCE_DIR}/thirdparty/gtest-linux/lib/libgtest_main.a)

add_executable(gtest_all
    test_calc.cpp
    test_string_util.cpp
)

target_link_libraries(gtest_all
    libcalc
    ${gtest}
    ${gtest_main}
    pthread
)
