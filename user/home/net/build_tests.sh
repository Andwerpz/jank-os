#!/usr/bin/env bash

for file in *.jank; do
    [[ -e "$file" ]] || continue
    jjc $file -o ${file%.*}
done
