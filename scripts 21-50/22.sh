#!/bin/bash
# Muestra el nombre de usuario y su shell separados por una tabulación
awk -F: '{print $1 "\t" $7}' /etc/passwd