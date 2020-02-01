PROJECT(project)
 

cmake_minimum_required(VERSION 2.6)
 
 
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m64 -g -Wall  -O2")
 
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m64 -g -Wall -O2")
 
 
 
# c++11 required
 
#set(CMAKE_CXX_STANDARD 11)
 
#set(CMAKE_CXX_STANDARD_REQUIRED ON)
 
 
 
include_directories(.)
include_directories(../Maths/)
LINK_DIRECTORIES(../)   #将libmaths.a放到代码目录也可以的
#LINK_DIRECTORIES(/mnt/) #tell the Makefile where to find the static library
 
set(SOURCE_FILES
 main.cpp 
)
 
set(EXECUTABLE_NAME "Alpah")
 
add_executable(${EXECUTABLE_NAME} main.cpp)
 
target_link_libraries(${EXECUTABLE_NAME}  libmaths.a)
