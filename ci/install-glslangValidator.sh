#!/bin/bash

set -e

# echo "need to install glslangValidator..."
# mkdir validator/
# cd validator/
# wget --no-check-certificate "https://cvs.khronos.org/svn/repos/ogl/trunk/ecosystem/public/sdk/tools/glslang/Install/Linux/glslangValidator"
# chmod +x glslangValidator
# cd ../
# echo "installed glslangValidator to $PWD/validator/glslangValidator"

echo "need to install glslangValidator..."
mkdir validator/
cd validator/
git clone git@github.com:KhronosGroup/glslang.git
cd glslang
git clone https://github.com/google/googletest.git External/googletest
cd ../
cmake -GNinja -DCMAKE_BUILD_TYPE={Debug|Release|RelWithDebInfo} \
      -DCMAKE_INSTALL_PREFIX=`pwd`/install glslang/
ninja install
cd ../
echo "installed glslangValidator to /validator/glslangValidator"
