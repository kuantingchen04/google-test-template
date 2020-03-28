include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/thirdparty/include)

# GTEST_LIBS
set(gtest ${CMAKE_SOURCE_DIR}/thirdparty/lib/gtest/libgtest.a)
set(gtest_main ${CMAKE_SOURCE_DIR}/thirdparty/lib/gtest/libgtest_main.a)

add_executable(gtest_calc
    test_calc.cpp
    test_string_util.cpp
)

target_link_libraries(gtest_calc
    calclib
    ${gtest}
    ${gtest_main}
    pthread
)
