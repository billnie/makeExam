cmake_minimum_required(VERSION 2.8)
add_definitions("-Wall -std=c++11") # <= 新增的编译选项
add_executable(calc 
    main.cpp 
    sin.cpp 
    cos.cpp)