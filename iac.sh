#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd -m carlos -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123)
useradd -m maria -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123)
useradd -m joao -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123)

useradd -m debora -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)
useradd -m sebastiana -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)
useradd -m roberto -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)

useradd -m josefina -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)
useradd -m amanda -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)
useradd -m rogerio -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)

echo "Definindo as permissões..."

chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

chmod -R 770 /adm
chmod -R 770 /ven
chmod -R 770 /sec
chmod -R 777 /publico

echo "Pronto!"

