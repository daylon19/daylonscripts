#!/bin/bash
# Muestra la línea de /etc/passwd con el UID más alto
sort -t: -k3 -n /etc/passwd | tail -n 1