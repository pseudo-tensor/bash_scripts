#!/bin/bash

appendable=" int main(){} "
file=$1
touch _TEMP_OUT _TEMP_SRC.cpp
cat $file >> ./_TEMP_SRC.cpp
echo $appendable >> ./_TEMP_SRC.cpp

g++ -o _SCRIPT_COMPILED ./_TEMP_SRC.cpp >> ./_TEMP_OUT

cat ./_TEMP_OUT
rm ./_TEMP_SRC.cpp ./_TEMP_OUT _SCRIPT_COMPILED
