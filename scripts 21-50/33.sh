#!/bin/bash
# Muestra los 5 ficheros o carpetas que más ocupan en el HOME
du -sh $HOME/* 2>/dev/null | sort -rh | head -n 5