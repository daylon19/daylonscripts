#!/bin/bash
# Muestra los procesos del usuario actual ordenados por PID (PID y comando)
ps -u $USER -o pid,comm --sort=pid