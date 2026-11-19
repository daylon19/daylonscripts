#!/bin/bash
# Pide una palabra y un fichero, muestra las líneas donde aparece y el total
read -p "Introduce la palabra a buscar: " palabra
read -p "Introduce el nombre del fichero: " fichero

echo "--- Líneas encontradas ---"
grep -n "$palabra" "$fichero"

echo -n "Total de líneas que la contienen: "
grep -c "$palabra" "$fichero"