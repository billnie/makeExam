cmake_minimum_required(VERSION 2.8)
add_definitions("-Wall -std=c++11") # <= 新增的编译选项

include_directories(.)
include_directories(include)

aux_source_directory(. DIR_SRCS)

add_executable(calc ${DIR_SRCS}
    sin/sin.cpp
    cos/cos.cpp
)