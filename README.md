# google-test-template
>A Google Test Quickstart Template for setting up tests using CMake. 

>Googletest libraries are prebuilt to run on Ubuntu 64bits in thirdparty directory.

### Check usage in test directory
```
.
├── thirdpary
├── src                     # Source files (alternatively `lib` or `app`)
├── test                    # Automated tests (alternatively `spec` or `tests`)
│   ├── benchmarks
│   ├── integration
│   └── unit
├── tools                   # Tools and utilities
├── LICENSE
└── README.md
```

### To build googletest libraries yourselves
```
git clone https://github.com/google/googletest
cd googletest
mkdir build && cd build
cmake .. -DCMAKE_CXX_STANDARD=11
make
```
* Googletest master requires C++11

### Reference

* GoogleTest: <https://github.com/google/googletest>
* Folder Structure Conventions: <https://github.com/kriasoft/Folder-Structure-Conventions>
