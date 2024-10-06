#!/bin/bash

sudo apt install curl
echo "Mi ip publica es: $(curl -s ifconfig.me)" > RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" >> RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin | awk -F '//' '{print $2}')" >> RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt
