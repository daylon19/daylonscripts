#!/bin/bash
# Comprueba si un fichero pasado por parámetro existe
if [ $# -ne 1 ]; then
  echo "Error de uso: $0 <nombre_fichero>"
  exit 1
fi

if [ -e "$1" ]; then
  echo "El fichero '$1' existe."
else
  echo "El fichero '$1' no existe."
fi