project(hello)

cmake_minimum_required(VERSION 2.8)

aux_source_directory(. DIR_SRCS)
#add_definitions("-Wall -std=c++11") # <= 新增的编译选项
add_executable(hello ${DIR_SRCS})
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

include_directories(/usr/local/Trolltech/QtEmbedded-4.8.5-arm/include/)
include_directories(/home/zchx/Downloads/boost_1_49_0_arm)
link_directories(/home/zchx/Downloads/boost_1_49_0_arm/stage/lib)
link_directories(/home/zchx/Downloads/ffmpeg-1.0.8-arm/ffmpeglib/)
link_directories(/usr/local/Trolltech/QtEmbedded-4.8.5-arm/lib)
link_directories(/home/zchx/Downloads/live_arm/BasicUsageEnvironment/)
link_directories(/home/zchx/Downloads/live_arm/groupsock/)
link_directories(/home/zchx/Downloads/live_arm/liveMedia/)
link_directories(/home/zchx/Downloads/live_arm/UsageEnvironment/)
  
ENDIF(CROSS_COMPILE)
