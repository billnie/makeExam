cmake_minimum_required(VERSION 2.8)
project(Alpha)
include_directories(../Maths/)
include_directories(.)
add_executable(Alpha
    main.cpp 
    ../Maths/maths.h
 )

TARGET_LINK_LIBRARIES( Alpha maths ) 