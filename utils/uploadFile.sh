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
        printf "load\r"
        sleep 0.3
        printf "%s\r" "$size"
        sleep 0.3
        xxd -p "$file" | tr -d '\n'
        sleep 0.3
        printf "%s\r" "$(basename "$file")"
        sleep 0.3
    } | nc -N localhost "$PORT"
}

read -e -p "Enter file path to send: " filepath
send_file "$filepath"
