#!/bin/bash
# Pide una frase y la muestra en mayúsculas y luego sin espacios
read -p "Introduce una frase: " frase

echo -n "En mayúsculas: "
echo "$frase" | tr '[:lower:]' '[:upper:]'

echo -n "Sin espacios: "
echo "$frase" | tr -d ' '