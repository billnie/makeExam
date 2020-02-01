cmake_minimum_required(VERSION 3.1)


#add_definitions("-Wall -std=c++11") # <= 新增的编译选项
SET(CROSS_COMPILE 1)

IF(CROSS_COMPILE) 
  
SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/mnt/code_usr01/niexuejin/M5/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/")

set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/arm-linux-androideabi-g++)
set(CMAKE_C_COMPILER   ${TOOLCHAIN_DIR}/bin/arm-linux-androideabi-gcc)
#set(GNU_FLAGS "-mfpu=vfp -fPIC")
set(CMAKE_CXX_FLAGS "${GNU_FLAGS} ")
set(CMAKE_C_FLAGS "${GNU_FLAGS}  ")


SET(CMAKE_FIND_ROOT_PATH  ${TOOLCHAIN_DIR}
 ${TOOLCHAIN_DIR}/arm-none-linux-gnueabi/include
 ${TOOLCHAIN_DIR}/arm-none-linux-gnueabi/lib )

 ENDIF(CROSS_COMPILE)


add_executable(Main main.cpp)

