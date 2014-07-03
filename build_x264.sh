pushd x264

./configure \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --sysroot="$SYSROOT" \
    --host=arm-linux \
    --enable-pic \
    --enable-static \
    --disable-cli
make -j4

popd
