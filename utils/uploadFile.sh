#!/bin/bash

PORT=4321

send_file() {
    local file="$1"
    if [[ ! -f "$file" ]]; then
        echo "File '$file' does not exist!"
        return 1
    fi

    local size
    size=$(wc -c < "$file")

    {
        printf "load "
        sleep 0.3
        printf "%s " "$(basename "$file")"
        sleep 0.3
        printf "%s " "$size"
        sleep 0.3
        xxd -p "$file" | tr -d '\n'
        sleep 0.3
        printf "\r"
        sleep 1.0
    } | nc -N localhost "$PORT"
}

# Check if a file path is given
if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <file-path>"
    exit 1
fi

send_file "$1"
