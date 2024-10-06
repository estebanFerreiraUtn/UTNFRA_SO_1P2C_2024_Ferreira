#!/bin/bash

grep -i "MemTotal" /proc/meminfo > RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' >> RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
