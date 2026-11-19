#!/bin/bash
# Pide un número y muestra si es par o impar
read -p "Introduce un número entero: " num

if [ $((num % 2)) -eq 0 ]; then
  echo "El número $num es PAR."
else
  echo "El número $num es IMPAR."
fi