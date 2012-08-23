#!/bin/sh

CROSS_COMPILE=arm-linux-androideabi-
CROSS_CC=${CROSS_COMPILE}gcc
CROSS_CXX=${CROSS_COMPILE}g++
REALTOP=/home/thomas/proj/linaro_panda/android
#EXTRA_C_FLAGS="-I${REALTOP}/bionic/libc/include -I${REALTOP}/bionic/libc/kernel/common"
EXTRA_C_FLAGS="-I${REALTOP}/bionic/libc/include"
EXTRA_C_FLAGS+="-I${REALTOP}/bionic/libc/kernel/common"


./configure \
         CFLAGS="-I${REALTOP}/bionic/libc/include -I${REALTOP}/bionic/libc/kernel/common -I${REALTOP}/bionic/libc/kernel/arch-arm -I${REALTOP}/bionic/libc/arch-arm/include -I${REALTOP}/bionic/libm/include" \
         CC=${CROSS_CC} \
         CXX=${CROSS_CXX} \
         --build=x86_64-linux \
         --host=arm-linux \
         --prefix=/system \
         --bindir=/system/bin \
         --libdir=/system/lib \
         --enable-shared 

