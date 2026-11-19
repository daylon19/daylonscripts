#!/bin/bash
# Suma el tamaño en bytes de todos los ficheros del directorio actual
ls -l | grep "^-" | awk '{suma += $5} END {print "Total bytes en ficheros:", suma}'