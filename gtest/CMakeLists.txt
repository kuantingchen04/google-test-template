include_directories(${PROJECT_SOURCE_DIR}/include)

#find_package(Threads)

#add_library(calclib
#    ${PROJECT_SOURCE_DIR}/src/calc.cpp
#    ${PROJECT_SOURCE_DIR}/src/string_util.cpp
#)

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
