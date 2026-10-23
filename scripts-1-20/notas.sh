#!/bin/bash
# Crea el fichero notas.txt y añade tres líneas
echo "Nota 1: Matemáticas" > notas.txt
echo "Nota 2: Programación" >> notas.txt
echo "Nota 3: Redes" >> notas.txt

echo "Contenido numerado:"
cat -n notas.txt