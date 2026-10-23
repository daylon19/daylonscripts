#!/bin/bash
# Pide un fichero y muestra su tamaño y tipo
read -p "Introduce el nombre de un fichero: " fichero
ls -lh "$fichero"
file "$fichero"