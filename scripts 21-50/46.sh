#!/bin/bash
read -p "Número 1: " a
read -p "Número 2: " b

if [ $a -gt $b ]; then
    echo "$a es mayor"
elif [ $b -gt $a ]; then
    echo "$b es mayor"
else
    echo "Son iguales"
fi