#!/bin/bash
# Script daylonsp31-5.sh de mantenimiento de /var/log

INFORME="informe_errores.txt"

# Vaciar el informe si ya existía y ponerle una cabecera
echo "=== INFORME DE ERRORES EN EL SISTEMA ===" > "$INFORME"

# 1. Recorrer los archivos de /var/log
for archivo in /var/log/*; do

    # Comprobar que sea un archivo normal (para no leer carpetas)
    if [ -f "$archivo" ]; then

        # 2. Filtrar las líneas con "error" o "fail" (ignorando mayúsculas con -i)
        errores=$(sudo grep -iE "error|fail" "$archivo" 2>/dev/null)

        # Si la variable "errores" no está vacía, añadir al informe
        if [ -n "$errores" ]; then

            # 3. Generar informe legible separando el archivo de origen
            echo "" >> "$INFORME"
            echo "---------------------------------------------------" >> "$INFORME"
            echo "ARCHIVO DE ORIGEN: $archivo" >> "$INFORME"
            echo "---------------------------------------------------" >> "$INFORME"
            echo "$errores" >> "$INFORME"

        fi
    fi
done

echo "Mantenimiento terminado. Informe guardado en: $INFORME"
