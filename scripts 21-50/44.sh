#!/bin/bash
# Recibe una ruta e indica si es fichero regular, directorio o si no existe
if [ $# -ne 1 ]; then
  echo "Uso: $0 <ruta>"
  exit 1
fi

if [ -f "$1" ]; then
  echo "'$1' es un fichero regular."
elif [ -d "$1" ]; then
  echo "'$1' es un directorio."
else
  echo "'$1' no existe."
fi