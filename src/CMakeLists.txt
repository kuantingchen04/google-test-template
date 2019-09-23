include_directories(
    ${PROJECT_SOURCE_DIR}/include
)

add_library(calclib
    calc.cpp
    string_util.cpp
)

add_executable(runcalc
    calc.cpp
    string_util.cpp
    main.cpp
)
