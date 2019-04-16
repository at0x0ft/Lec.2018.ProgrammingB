#!/bin/sh

gcc -O -c $1
objdump -d ${1%.*}.o > ${1%.*}.s
rm ${1%.*}.o