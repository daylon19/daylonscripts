#!/bin/bash
# Muestra los usuarios con shell bash y cuántos son
echo "Usuarios con bash:"
grep "/bash$" /etc/passwd | cut -d: -f1

echo -n "Total de usuarios con bash: "
grep -c "/bash$" /etc/passwd