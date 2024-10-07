#!/bin/bash


#CREO LOS GRUPOS
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores        


#CREO LOS GRUPOS CON MI MISMA CLAVE
sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesores" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1


#ACA AGREGO LOS USUARIOS A SUS GRUPOS CORRESPONDIENTES
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1

#MUESTRO LAS CLAVES QUE SEAN IGUALES
sudo grep -E 'vagrant|p1c2_2024_A1|p1c2_2024_A2|p1c2_2024_gAlumno p1c2_2024_A3|p1c2_2024_P1' /etc/shadow |awk -F ':' '{print $2}'

#PERMISOS A CADA CARPETA CON SU USUARIO
sudo chmod 730 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 773 /Examenes-UTN/profesores

echo "--------------------------"
echo "----USUARIOS-CREADOS------"
echo "-----GRUPOS-CREADOS-------"
echo "--------PASSWORD----------"
echo "--------------------------"

#MUESTRO MIS USUARIOS CREADOS
echo "---------Usuarios--------"
cut -d: -f1 /etc/passwd | tail -n 4
echo "-------------------------"



