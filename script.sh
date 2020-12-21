#!/bin/bash

#buat user
mysql -u root <<EOFMYSQL
create user 'aaa'@'localhost' identified by '12345';
grant all privileges on *.* to 'aaa'@'localhost';
EOFMYSQL

echo -e "\npassword 12345\n"

#akses mysql dengan user yang di atas
mysql -u aaa -p <<hehe
show databases;
create database dbsosmed;
show databases;
hehe
