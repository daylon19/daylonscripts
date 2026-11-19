#!/bin/bash
read -p "Cadena 1: " c1
read -p "Cadena 2: " c2

[ -z "$c1" ] && echo "La primera está vacía"

if [ "$c1" = "$c2" ]; then
    echo "Son iguales"
else
    echo "Son distintas"
fi