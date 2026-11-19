#!/bin/bash
# Muestra las líneas 5 a 10 de /etc/passwd de dos formas distintas

echo "--- Usando head y tail ---"
head -n 10 /etc/passwd | tail -n 6

echo "--- Usando sed -n ---"
sed -n '5,10p' /etc/passwd