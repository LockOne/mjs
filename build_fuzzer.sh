#!/bin/bash

ANGORA_LOC=/local_home/cheong/Angora_func

mkdir ${ANGORA_LOC}/subjects
mkdir ${ANGORA_LOC}/FInfos

cd mjs
rm -rf build
CC=gclang make

cd build
get-bc mjs

${ANGORA_LOC}/bin/angora-clang mjs.bc -o ${ANGORA_LOC}/subjects/mjs.fast
mv FuncInfo.txt ${ANGORA_LOC}/FInfos/FuncInfo-mjs.txt
USE_TRACK=1 ${ANGORA_LOC}/bin/angora-clang mjs.bc -o ${ANGORA_LOC}/subjects/mjs.tt

