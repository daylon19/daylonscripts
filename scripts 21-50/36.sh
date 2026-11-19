#!/bin/bash
# Genera un informe y lo guarda a la vez en informe.txt
{
  echo "--- INFORME DEL SISTEMA ---"
  echo "Nombre de la máquina: $(hostname)"
  echo "Usuarios humanos:"
  awk -F: '$3 >= 1000 && $3 != 65534 {print $1}' /etc/passwd
  echo -n "Total de usuarios humanos: "
  awk -F: '$3 >= 1000 && $3 != 65534 {print $1}' /etc/passwd | wc -l
} | tee informe.txt