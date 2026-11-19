#!/bin/bash
# Muestra cuántos ficheros y directorios hay en el directorio actual (sin ocultos)
ficheros=$(ls -l | grep "^-" | wc -l)
directorios=$(ls -l | grep "^d" | wc -l)

echo "Ficheros: $ficheros"
echo "Directorios: $directorios"