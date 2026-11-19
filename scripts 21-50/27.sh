#!/bin/bash
# Crea un fichero con la palabra Windows y la sustituye por Linux
cat << EOF > texto.txt
Windows es un sistema operativo.
Prefiero usar Windows en el trabajo.
Muchas personas usan Windows a diario.
EOF

echo "--- Resultado tras la sustitución ---"
sed 's/Windows/Linux/g' texto.txt