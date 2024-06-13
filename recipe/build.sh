#!/bin/bash

cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DLAPACK_LIBRARIES=${PREFIX}/lib/liblapack.so -DBLAS_LIBRARIES=${PREFIX}/lib/libcblas.so ..
make
make install

# if [ "$(uname)" == "Darwin" ]; then
    
#     cd build
#     cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DLAPACK_LIBRARIES=${PREFIX}/lib/liblapack.dylib -DBLAS_LIBRARIES=${PREFIX}/lib/libcblas.dylib \
#           -DCMAKE_C_COMPILER=clang \
#           -DCMAKE_C_FLAGS=${CFLAGS} \
#           -DCMAKE_CXX_COMPILER=clang++ \
#           -DCMAKE_CXX_FLAGS=${CXXFLAGS} \
#           -DCMAKE_CXX_STANDARD=98 \
#           ..
#     make
#     make install
    
# fi

# if [ "$(uname)" == "Linux" ]; then

#     cd build
#     cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DLAPACK_LIBRARIES=${PREFIX}/lib/liblapack.so -DBLAS_LIBRARIES=${PREFIX}/lib/libcblas.so ..
#     make
#     make install

# fi
