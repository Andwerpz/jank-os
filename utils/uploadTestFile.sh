#!/bin/bash
set -e

cd ../test
jjc test.jank -S -o a.s
make a.out
mv a.out ../utils
cd ../utils

bash uploadFile.sh a.out