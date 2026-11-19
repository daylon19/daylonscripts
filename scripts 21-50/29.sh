#!/bin/bash
# Muestra los 5 procesos que más memoria consumen: usuario, PID y %MEM
ps aux | sort -k4 -nr | head -n 5 | awk '{print $1 "\t" $2 "\t" $4}'