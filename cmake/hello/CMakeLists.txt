project(hello)

cmake_minimum_required(VERSION 2.8)

aux_source_directory(. DIR_SRCS)
add_definitions("-Wall -std=c++11") # <= 新增的编译选项
add_executable(hello ${DIR_SRCS})