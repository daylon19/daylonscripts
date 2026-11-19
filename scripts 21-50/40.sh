#!/bin/bash
# Muestra las shells distintas y cuántos usuarios usan cada una
cut -d: -f7 /etc/passwd | sort | uniq -c