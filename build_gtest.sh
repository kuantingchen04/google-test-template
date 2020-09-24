if [ -d "googletest" ]; then
    rm -rf googletest
fi

git clone https://github.com/google/googletest
cd googletest
git checkout tags/release-1.10.0 # specify version
mkdir build && cd build
cmake -DCMAKE_CXX_STANDARD=11 ..
make -j4

cp lib/lib*.a ../../thirdparty/gtest-linux/lib

rm -rf googletest