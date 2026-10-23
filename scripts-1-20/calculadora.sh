#!/bin/bash
# Pide dos números y realiza operaciones básicas
read -p "Introduce el primer número: " n1
read -p "Introduce el segundo número: " n2

echo "Suma: $((n1 + n2))"
echo "Resta: $((n1 - n2))"
echo "Multiplicación: $((n1 * n2))"
echo "División entera: $((n1 / n2))"