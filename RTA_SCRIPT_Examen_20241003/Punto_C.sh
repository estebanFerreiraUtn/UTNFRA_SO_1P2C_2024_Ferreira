#!/bin/bash

tail /etc/group
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
tail /etc/group

sudo useradd -m -s /bin/bash -c "p1c2_2024_A1" -G p1c2_2024_gAlumno -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo grep osboxes /etc/shadow | sudo grep p1c2_2024_A1 /etc/shadow
sudo useradd -m -s /bin/bash -c "p1c2_2024_A2" -G p1c2_2024_gAlumno -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo grep osboxes /etc/shadow | sudo grep p1c2_2024_A2 /etc/shadow
sudo useradd -m -s /bin/bash -c "p1c2_2024_A3" -G p1c2_2024_gAlumno -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo grep osboxes /etc/shadow | sudo grep p1c2_2024_A3 /etc/shadow
sudo useradd -m -s /bin/bash -c "p1c2_2024_P1" -G p1c2_2024_gProfesores -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
sudo grep osboxes /etc/shadow | sudo grep p1c2_2024_P1 /etc/shadow

sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
ls -l /Examenes-UTN
sudo chmod -R 750 /Examenes-UTN/alumno_1
ls -l /Examenes-UTN
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
ls -l /Examenes-UTN
sudo chmod -R 760 /Examenes-UTN/alumno_2
ls -l /Examenes-UTN
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
ls -l /Examenes-UTN
sudo chmod -R 700 /Examenes-UTN/alumno_3
ls -l /Examenes-UTN
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
ls -l /Examenes-UTN
sudo chmod -R 775 /Examenes-UTN/profesores
ls -l /Examenes-UTN

sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar1.txt"
cat /Examenes-UTN/alumno_1/validar1.txt
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar1.txt"
cat /Examenes-UTN/alumno_2/validar1.txt
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar1.txt"
cat /Examenes-UTN/alumno_3/validar1.txt
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar1.txt"
cat /Examenes-UTN/profesores/validar1.txt

