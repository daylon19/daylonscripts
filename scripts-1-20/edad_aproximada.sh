#!/bin/bash
# Calcula la edad aproximada pidiendo el año de nacimiento
read -p "Introduce tu año de nacimiento: " anio_nac
anio_actual=$(date +%Y)
edad=$((anio_actual - anio_nac))
echo "Tienes aproximadamente $edad años."