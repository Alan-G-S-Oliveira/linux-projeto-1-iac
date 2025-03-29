#!/bin/bash

echo "Iniciando o procedimento..."

echo "Criando pastas..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Pastas criadas com sucesso!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)

useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)

useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)

echo "Usuários criados com sucesso!!"

echo "Atribuindo os diretórios aos grupos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Diretórios atribuidos!"

echo "Modificando as permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões dos diretórios modificadas!"

echo "Procedimento finalizado com sucesso!"
