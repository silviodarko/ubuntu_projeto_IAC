#!/bin/bash

# Excluir diretórios, arquivos, grupos e usuários criados anteriormente
sudo rm -rf /publico /adm /ven /sec
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC
sudo userdel -r Carlos
sudo userdel -r Maria
sudo userdel -r João
sudo userdel -r Débora
sudo userdel -r Sebastião
sudo userdel -r Roberto
sudo userdel -r Josefina
sudo userdel -r Amanda
sudo userdel -r Rogério

# Criação dos grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

# Criação dos diretórios
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

# Definir dono dos diretórios
sudo chown root:root /publico
sudo chown root:root /adm
sudo chown root:root /ven
sudo chown root:root /sec

# Definir permissões nos diretórios
sudo chmod 777 /publico
sudo chmod 700 /adm
sudo chmod 700 /ven
sudo chmod 700 /sec

# Criação dos usuários GRP_ADM
sudo useradd -m -s /bin/bash -g GRP_ADM Carlos
sudo useradd -m -s /bin/bash -g GRP_ADM Maria
sudo useradd -m -s /bin/bash -g GRP_ADM João

# Criação dos usuários GRP_VEN
sudo useradd -m -s /bin/bash -g GRP_VEN Débora
sudo useradd -m -s /bin/bash -g GRP_VEN Sebastião
sudo useradd -m -s /bin/bash -g GRP_VEN Roberto

# Criação dos usuários GRP_SEC
sudo useradd -m -s /bin/bash -g GRP_SEC Josefina
sudo useradd -m -s /bin/bash -g GRP_SEC Amanda
sudo useradd -m -s /bin/bash -g GRP_SEC Rogério

# Definir permissões nos diretórios para cada grupo
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

# Definir permissões para os usuários dentro dos diretórios
sudo setfacl -Rm u:Carlos:rwx /publico
sudo setfacl -Rm u:Maria:rwx /publico
sudo setfacl -Rm u:João:rwx /publico
sudo setfacl -Rm u:Débora:rwx /ven
sudo setfacl -Rm u:Sebastião:rwx /ven
sudo setfacl -Rm u:Roberto:rwx /ven
sudo setfacl -Rm u:Josefina:rwx /sec
sudo setfacl -Rm u:Amanda:rwx /sec
sudo setfacl -Rm u:Rogério:rwx /sec

