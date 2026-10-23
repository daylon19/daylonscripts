#!/bin/bash
# Crea borrador, renombra, crea carpeta y mueve
touch borrador.txt
mv borrador.txt definitivo.txt
mkdir -p entregado
mv definitivo.txt entregado/
echo "Fichero movido a la carpeta entregado."