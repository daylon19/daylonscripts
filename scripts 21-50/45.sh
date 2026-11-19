#!/bin/bash
[ -r "$1" ] && echo "Lectura: SÍ" || echo "Lectura: NO"
[ -w "$1" ] && echo "Escritura: SÍ" || echo "Escritura: NO"
[ -x "$1" ] && echo "Ejecución: SÍ" || echo "Ejecución: NO"