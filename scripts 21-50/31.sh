#!/bin/bash
# Muestra únicamente la dirección IP principal de la máquina
hostname -I | cut -d' ' -f1