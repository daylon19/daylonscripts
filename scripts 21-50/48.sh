#!/bin/bash
read -p "Usuario: " u

if grep -q "^$u:" /etc/passwd; then
    echo "Existe"
else
    echo "No existe"
fi