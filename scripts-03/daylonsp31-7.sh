#!/bin/bash
# Script daylonsp31-7.sh - Monitorización de espacio en disco

ARCHIVO_LOG="/home/daylon/registro_disco.log"
UMBRAL=5

# df -h saca el espacio. awk coge el porcentaje y el nombre de la partición.
df -h | awk 'NR>1 {print $5, $1}' | while read porcentaje_txt particion; do

    # Quitar el símbolo % para poder comparar como número
    porcentaje=$(echo "$porcentaje_txt" | tr -d '%')

    # Comprobar si el porcentaje es mayor o igual al umbral (80%)
    if [ "$porcentaje" -ge "$UMBRAL" ]; then
        fecha=$(date "+%Y-%m-%d %H:%M:%S")
        echo "Fecha: $fecha | Particion: $particion | Ocupacion: $porcentaje_txt" >> "$ARCHIVO_LOG"
    fi
done