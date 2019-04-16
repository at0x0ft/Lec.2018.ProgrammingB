#!/usr/bin/bash

for i in 4 8 16 32 64 128 256 512 1024 2048
do
sed -e 's/#define BLOCK_SIZE 4/#define BLOCK_SIZE '$i'/' brot10.c > brot10_$i.c
sh cp.sh brot10_$i.c
sh prntRes.sh
mv res.csv brot10_res$i.csv
rm brot10_$i.c
done
