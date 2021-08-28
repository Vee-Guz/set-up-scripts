#!/bin/bash

#upgrade and update machine
sudo apt-get update
sudo apt-get upgrade

#install tools
#install NMAP
sudo apt install nmap

#install Apache
sudo apt install apache2

#install Medusa
sudo apt install medusa

#install John the Ripper
sudo apt-get install john -y

#install MySQL
sudo apt install mysql-server

#adding existing database to MySQL; should have Devops database installed
#cd into folder
cd test_db-master
#log in
sudo mysql -u root
#create database
create database employees
#specify sql
source employees.sql
#verify that database was installed
sudo mysql -u root employees < employees.sql
