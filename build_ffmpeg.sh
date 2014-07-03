#!/bin/bash

function build_one
{
./configure \
    --prefix=$PREFIX \
    --disable-shared \
    --enable-static \
    --disable-doc \
    --enable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-avdevice \
    --disable-doc \
    --disable-symver \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --target-os=linux \
    --arch=arm \
    --enable-cross-compile \
    --enable-version3 \
    --enable-gpl \
    --enable-libx264 \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic -I../x264" \
    --extra-ldflags="-L../x264" \
    $ADDITIONAL_CONFIGURE_FLAG
make clean
make
make install
}

pushd ffmpeg

CPU=arm
PREFIX=$(pwd)/android/$CPU
ADDI_CFLAGS="-marm"
build_one

popd
