cmake_minimum_required(VERSION 2.8)


#add_definitions("-Wall -std=c++11") # <= 新增的编译选项

SET(CROSS_COMPILE 1)

IF(CROSS_COMPILE) 
  
SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/opt/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/")

set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/arm-linux-g++)
set(CMAKE_C_COMPILER   ${TOOLCHAIN_DIR}/bin/arm-linux-gcc)
set(GNU_FLAGS "-mfpu=vfp -fPIC")
set(CMAKE_CXX_FLAGS "${GNU_FLAGS} ")
set(CMAKE_C_FLAGS "${GNU_FLAGS}  ")


SET(CMAKE_FIND_ROOT_PATH  ${TOOLCHAIN_DIR}
 ${TOOLCHAIN_DIR}/arm-none-linux-gnueabi/include
 ${TOOLCHAIN_DIR}/arm-none-linux-gnueabi/lib )

 ENDIF(CROSS_COMPILE)


add_executable(calc 
    main.cpp 
    sin.cpp 
    cos.cpp)