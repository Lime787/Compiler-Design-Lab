#!/bin/bash

# Usage: ./runspim.sh program.s

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file.s>"
    exit 1
fi

INPUT="$1"

if [ ! -f "$INPUT" ]; then
    echo "[ERROR] File '$INPUT' not found"
    exit 1
fi

# Prefers the non-GUI spim version if installed
if command -v spim >/dev/null 2>&1; then
    # -file loads the assembly and runs it
    spim -file "$INPUT"
elif command -v qtspim >/dev/null 2>&1; then
    # qtspim CLI mode
    qtspim -file "$INPUT"
else
    echo "[ERROR] Neither spim nor qtspim is installed."
    exit 1
fi
