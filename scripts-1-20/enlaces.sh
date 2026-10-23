#!/bin/bash
# Crea un fichero y sus enlaces blando y duro
echo "Texto original" > original.txt
ln -s original.txt enlace_blando
ln original.txt enlace_duro

echo "Comparación de inodos y detalles:"
ls -li original.txt enlace_blando enlace_duro