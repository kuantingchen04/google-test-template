include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(unittest_all
    test_calc.cpp
    test_string_util.cpp
)

target_link_libraries(unittest_all
    my_library
    gtest_main
)
