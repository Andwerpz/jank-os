#!/bin/bash
set -e

cd test_program
jjc test.jank -S -o a.s
make a.out
mv a.out ..
cd ..

bash uploadFile.sh a.out