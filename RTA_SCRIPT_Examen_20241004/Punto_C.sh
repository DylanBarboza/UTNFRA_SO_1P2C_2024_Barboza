#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores        

sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
sudo passwd p1c2_2024_A1
p1c2_2024_A1
p1c2_2024_A1

sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
sudo passwd p1c2_2024_A2
p1c2_2024_A2
p1c2_2024_A2

sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
sudo passwd p1c2_2024_A3
p1c2_2024_A3
p1c2_2024_A3

sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1
sudo passwd p1c2_2024_P1
p1c2_2024_P1
p1c2_2024_P1

echo "--------------------------"
echo "----USUARIOS-CREADOS------"
echo "-----GRUPOS-CREADOS-------"
echo "--------PASSWORD----------"
echo "--------------------------"

cut -d: -f1 /etc/passwd | tail -n 4


