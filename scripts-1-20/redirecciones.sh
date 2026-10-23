#!/bin/bash
# Guarda listados y errores, y cuenta líneas
ls -l /etc > listado.txt
ls /root 2> errores.txt

echo "Líneas en listado.txt: $(wc -l < listado.txt)"
echo "Líneas en errores.txt: $(wc -l < errores.txt)"