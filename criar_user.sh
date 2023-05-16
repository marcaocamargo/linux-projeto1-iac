#!/bin/bash
for i in $(awk '{print $1}' users)
do
echo "Criando usuário!!!"
useradd $i -s /bin/bash -m -p $(openssl passwd -6 Senha123) 
echo "Usuário "$i "criado com sucesso!"
echo "Finalizado!"
done
