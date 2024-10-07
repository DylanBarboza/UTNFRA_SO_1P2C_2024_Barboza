#!/bin/bash

#Les asigo a cada variable informacion
IP="Mi IP pública es: $(curl -s ifconfig.me)" #MI IP
URL="La URL de mi repositorio es: $(git -C ~/repogit/UTNFRA_SO_1P2C_2024_Barboza remote get-url origin)" #MI REPOSITORIO
USUARIO="Mi usuario es: $(whoami)" #MI USUARIO
HASH="El hash de mi usuario es: $(echo -n "$USUARIO" | sha256sum | awk '{print $1}')" #EL HASH DEL USUARIO

#Toda esa informacion lo mando a 
echo "$IP" > ~/repogit/UTNFRA_SO_1P2C_2024_Barboza/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "$USUARIO" >>  ~/repogit/UTNFRA_SO_1P2C_2024_Barboza/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "$HASH" >>  ~/repogit/UTNFRA_SO_1P2C_2024_Barboza/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "$URL" >>  ~/repogit/UTNFRA_SO_1P2C_2024_Barboza/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

echo "------------------"
echo "--Carpeta-CREADA--"
echo "------------------"

