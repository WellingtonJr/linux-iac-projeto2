  GNU nano 6.2                                                                          iac-servidor-web.sh *                                                                                 
#!/bin/bash

echo "Iniciando..."

echo "Atualizando o servidor ..."

apt-get update -y
apt-get upgrade -y

echo "Instalando o apache..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip

echo "Baixando aplicacao..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos de main.zip..."

unzip main.zip

"Copiando arquivos para o diretorio padrao do apache..."

cd linux-site-dio-main
cp -R -v * /var/www/html/

echo "Finalizado!!"

