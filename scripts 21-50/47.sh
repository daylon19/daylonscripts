#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Uso: $0 <param1> <param2>"
    exit 1
fi

echo "1: $1"
echo "2: $2"
