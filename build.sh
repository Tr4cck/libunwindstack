#!/usr/bin/env bash

export ANDROID_NDK=$HOME/Android/Sdk/ndk/29.0.14033849

rm -rf build && mkdir build && cd build

cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
    -DANDROID=1 \
    -DANDROID_ABI="arm64-v8a" \
    -DANDROID_NDK=$ANDROID_NDK \
    -DANDROID_PLATFORM=android-35 \
    ..

make

cd ..