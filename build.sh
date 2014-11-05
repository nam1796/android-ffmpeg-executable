#!/bin/bash

export TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86
export SYSROOT=$NDK/platforms/android-9/arch-arm/

./build_x264.sh
./build_ffmpeg.sh
