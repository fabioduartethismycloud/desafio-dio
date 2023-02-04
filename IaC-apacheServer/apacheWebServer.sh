#!/bin/bash

echo "Configuração de Web Server Apache"

echo "Update de Repositorio e Pacotes"
apt-get update && apt-get upgrade -y

echo "Instalação servidor apache"
apt-get install apache2 -y && apt-get install unzip -y

echo "Download Arquivos do Site Dio..."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Movendo arquivos do site Dio para o Servidor Apache..."
cd linux-site-dio-main

cp -R * /var/www/html/

echo "Acesse seu Site em: http://localhost/index.html"
