#!/bin/bash
clear
echo -e '\e[1;32m'
clear
echo "Instalando requisitos..."
sleep 2
echo ""
echo -ne "Actualizando repositorios - \r"
apt-get update > /dev/null
echo -ne "Actualizando repositorios - OK!\r"
echo ""
echo ""
echo -ne "Instalando requisitos - \r"
apt-get -y install bind9 apache2 > /dev/null 2> /dev/null
echo -ne "Instalando requisitos - OK!\r"
echo ""
echo ""
echo -ne "Instalando Webmin - \r"
echo ""
echo ""
echo -ne "	Descargando v1.730 - \r"
wget "http://prdownloads.sourceforge.net/webadmin/webmin_1.730_all.deb" > /dev/null 2> /dev/null
echo -ne "	Descargando v1.730 - OK!\r"
echo ""
echo -ne "	Instalando - \r"
dpkg --install webmin_1.730_all.deb > /dev/null 2> /dev/null
apt-get install -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python > /dev/null 2> /dev/null
apt-get -f install -y > /dev/null 2> /dev/null
echo -ne "	Instalando - OK!\r"
echo ""
echo ""
echo "Iniciando interfaz web de Webmin..."
sleep 1
firefox "https://localhost:10000"
exit
