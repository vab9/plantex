#!/bin/bash
set -e

echo "need to install glslangValidator..."
mkdir validator/
cd validator/
wget --no-check-certificate "https://cvs.khronos.org/svn/repos/ogl/trunk/ecosystem/public/sdk/tools/glslang/Install/Linux/glslangValidator"
chmod +x glslangValidator
cd ../
echo "installed glslangValidator to $PWD/validator/glslangValidator"
