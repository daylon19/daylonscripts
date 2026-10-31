#!/bin/bash
# Script daylonsp31-4.sh - Desinstalación de programas
# Lee programas.txt del directorio actual y los desinstala

ARCHIVO="programas.txt"

# 1. Comprobar si el archivo existe
if [ ! -f "$ARCHIVO" ]; then
    echo "Error: No se encuentra el archivo $ARCHIVO"
    exit 1
fi

echo "Leyendo programas de $ARCHIVO..."
echo "--------------------------------"

# 2. Recorrer el archivo usando cat y un bucle for clásico
for programa in $(cat "$ARCHIVO"); do
    echo "Comprobando paquete: $programa..."

    # 3. Comprobar si está instalado (buscándolo con grep de forma silenciosa -q)
    if dpkg -l | grep -q "$programa"; then
        echo "El programa está instalado. Desinstalando..."
        sudo apt purge -y "$programa"
    else
        # 4. Aviso si no está instalado (el script continúa solo)
        echo "AVISO: El programa '$programa' no está instalado. Se omite."
    fi
    echo "--------------------------------"
done

echo "Proceso finalizado."