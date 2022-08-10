#!/bin/bash

echo "Step (1/6): Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Step (2/6): Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Step (3/6): Creating users..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Step (4/6): Specifying the owner of the directories..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Step (5/6): Specifying directory permissions..."

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Step (6/6): End of configuration..."











