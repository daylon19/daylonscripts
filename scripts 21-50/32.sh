#!/bin/bash
# Extrae y muestra el día, mes y año a partir de date +%d/%m/%Y
fecha=$(date +%d/%m/%Y)

dia=$(echo "$fecha" | cut -d/ -f1)
mes=$(echo "$fecha" | cut -d/ -f2)
anio=$(echo "$fecha" | cut -d/ -f3)

echo "Día: $dia"
echo "Mes: $mes"
echo "Año: $anio"