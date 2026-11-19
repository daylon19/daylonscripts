#!/bin/bash
read -p "Nota (0-10): " n

if [ $n -lt 5 ]; then
    echo "Insuficiente"
elif [ $n -eq 5 ]; then
    echo "Suficiente"
elif [ $n -eq 6 ]; then
    echo "Bien"
elif [ $n -lt 9 ]; then
    echo "Notable"
else
    echo "Sobresaliente"
fi