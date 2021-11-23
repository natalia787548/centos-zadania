#!/bin/bash
groupadd g1
groupadd g2
groupadd g3
useradd u1
useradd u2
useradd u3
usermod -g1 us
usermod -g2 us
usermod -g3 us 

mkdir /home/u1
mkdir /home/u1/test1
mkdir /home/u1/test1/Pulpit1
touch /home/u1/test1/plik_info1
touch /home/u1/test1/plik_data1

mkdir /home/u2
mkdir /home/u2/test2
mkdir /home/u3
mkdir /home/u3/abc3
touch /home/u3/abc3/plik_info3

cd /home 
tree
cp /home/u1/test1/plik_info1 /home/u2/test2
cp /home/u1/test1/plik_data1 /home/u2/test2
cp /home/u1/test1/plik_data1 /home/u3/abc3

tree
userdel u1 
userdel u2
userdel u3








adduser u1
/home/plik1
cd /home

tree