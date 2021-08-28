#!/bin/bash

#remove apache, mysql, nmap, medusa, john the ripper

sudo apt-get --purge remove apache2
sudo apt-get remove --purge mysql*
sudo apt-get remove --purge nmap
sudo apt-get remove --purge medusa
sudo apt-get remove --purge john
