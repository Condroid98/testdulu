#!/bin/bash

echo "install webserver"
echo "================================"
echo -e "Install apache2\n"
apt-get install -y apache2
echo -e "\ninstall php & php-mysql\n"
apt-get install -y php php-mysql
echo -e "\ninstall mysql-server\n"
apt-get install -y mysql-server
echo -e "\ninstall selesai\n"

#buat user
mysql -u root <<EOFMYSQL
create user 'aaa'@'localhost' identified by '12345';
grant all privileges on *.* to 'aaa'@'localhost';
EOFMYSQL

#akses mysql dengan user yang di atas
mysql -u aaa -p12345 <<hehe
create database dbsosmed;
\q
hehe

echo -e "\nedit apache"
#install wget
apt-get install -y wget
#mengambil file master.zip di github"
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
echo -e "\nAmbil File master.zip\n"
echo -e "extrak file master.zip"
unzip master.zip
echo -e "\nMemindahkan file extrak"
#hapus file di var/www/html/*
rm -rf /var/www/html/*
#cut file sosial-media-master ke folder apache
mv sosial-media-master/*  /var/www/html
echo -e "pindahkan selesai\n"

#masuk pada direktori 
cd /var/www/html
mysql -u aaa -p12345 dbsosmed < dump.sql

#restart layanan apache
service apache2 restart

echo "Sekarang coba akses IP"





