#!/usr/bin/env bash

for file in *.jank; do
    [[ -e "$file" ]] || continue

    cmd=(jjc "$file" --follow-includes -o "${file%.*}")
    echo "${cmd[*]}"

    output=$("${cmd[@]}" 2>&1)
    status=$?

    if (( status != 0 )); then
        printf '%s\n' "$output"
        exit "$status"
    fi
done