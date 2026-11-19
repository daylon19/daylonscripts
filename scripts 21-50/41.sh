#!/bin/bash
# Pide un número y muestra si es positivo, negativo o cero
read -p "Introduce un número: " num

if [ $num -gt 0 ]; then
  echo "El número es positivo."
elif [ $num -lt 0 ]; then
  echo "El número es negativo."
else
  echo "El número es cero."
fi