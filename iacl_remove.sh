#!/bin/bash

echo "Step (1/4): Remove user directories..."

rm -rf /public/
rm -rf /adm/
rm -rf /ven/
rm -rf /sec/

echo "Step (2/4): Remove users..."

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao

userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto

userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Step (3/4): Remove user groups..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Step (4/4): Finish!!!"
