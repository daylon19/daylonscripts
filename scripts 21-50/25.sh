#!/bin/bash
# Crea un fichero de nombres, lo ordena y elimina duplicados
cat << EOF > nombres.txt
Carlos
Ana
Beatriz
Ana
Carlos
David
EOF

echo "--- Fichero ordenado sin duplicados ---"
sort nombres.txt | uniq