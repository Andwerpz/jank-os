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
      echo -ne "load\r"
      sleep 0.3
      echo -ne "${size}\r"
      sleep 0.3
      cat "$file"
      sleep 0.3
      echo -ne "$(basename "$file")\r"
      sleep 0.3
    } | nc -q 1 localhost "$PORT"
}

read -e -p "Enter file path to send: " filepath
send_file "$filepath"