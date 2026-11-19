#!/bin/bash
# Pide el nombre de un fichero y muestra líneas, palabras y caracteres
read -p "Introduce el nombre del fichero: " fichero

echo -n "Líneas: "
wc -l < "$fichero"

echo -n "Palabras: "
wc -w < "$fichero"

echo -n "Caracteres: "
wc -m < "$fichero"