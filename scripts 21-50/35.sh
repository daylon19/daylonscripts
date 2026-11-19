#!/bin/bash
# Pide un fichero y cuenta cuántas vocales contiene en total
read -p "Introduce el nombre del fichero: " fichero

vocales=$(tr -cd 'aeiouAEIOU' < "$fichero" | wc -c)
echo "El fichero contiene $vocales vocales."