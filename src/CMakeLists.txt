include_directories(
    ${CMAKE_SOURCE_DIR}/include
)

add_library(libcalc
    calc.cpp
    string_util.cpp
)
