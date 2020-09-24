if [ -d "googletest" ]; then
    rm -rf googletest
fi

git clone https://github.com/google/googletest
cd googletest
git checkout tags/release-1.10.0 # specify version
mkdir build && cd build
cmake \
-DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
-DCMAKE_SYSTEM_NAME=Android \
-DCMAKE_MAKE_PROGRAM=$ANDROID_NDK/prebuilt/linux-x86_64/bin/make \
-DCMAKE_CXX_STANDARD=11 \
-DAndroid=ON \
-DANDROID_ABI=armeabi-v7a \
-DANDROID_NATIVE_API_LEVEL=21 \
-DANDROID_NDK=$ANDROID_NDK \
-DANDROID_TOOLCHAIN_NAME=arm-linux-androideabi-4.9 \
-DANDROID_STL=gnustl_static \
..
make -j4

cp lib/lib*.a ../../thirdparty/gtest-v7a/lib

rm -rf googletest