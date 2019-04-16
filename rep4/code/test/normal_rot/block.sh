#!/usr/bin/bash

for i in 4 8 16 32 64 128 256 512 1024 2048
do
sed -e 's/#define BLOCK_SIZE 4/#define BLOCK_SIZE '$i'/' rot10.c > rot10_$i.c
sh cp.sh rot10_$i.c
sh prntRes.sh
mv res.csv rot10_res$i.csv
rm rot10_$i.c
done