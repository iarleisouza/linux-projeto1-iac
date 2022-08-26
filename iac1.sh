#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd giselia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd rufino -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd giorgia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd patricia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd vania -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd samantha -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd flavio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

