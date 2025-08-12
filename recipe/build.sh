#!/bin/bash
echo "BUILD STARTS HERE"

if [ "$(uname)" == "Darwin" ]; then
    echo "BUILD TYPE is Darwin"

    cd build
    cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DLAPACK_LIBRARIES=${PREFIX}/lib/liblapack.dylib -DBLAS_LIBRARIES=${PREFIX}/lib/libcblas.dylib \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_C_FLAGS=${CFLAGS} \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DCMAKE_CXX_FLAGS=${CXXFLAGS} \
          -DCMAKE_CXX_STANDARD=98 \
          -DCMAKE_Fortran_FLAGS="-std=legacy" \
          ..
    make VERBOSE=1
    make install
    
fi

if [ "$(uname)" == "Linux" ]; then

    echo "BUILD TYPE is Linux"

    cd build
    cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DLAPACK_LIBRARIES=${PREFIX}/lib/liblapack.so -DBLAS_LIBRARIES=${PREFIX}/lib/libcblas.so -DCMAKE_Fortran_FLAGS="-std=legacy" ..
    make VERBOSE=1
    make install

fi
