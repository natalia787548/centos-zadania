#!/bin/bash
cd~

groupadd g1
groupadd g2
groupadd g3
useradd u1
useradd u2
useradd u3
usermod -a -G g1 u1
usermod -a -G g2 u2
usermod -a -G g3 u3

mkdir /home/user1
mkdir /home/user1/Pulpit1
mkdir /home/user1/Pulpit1/katalog1

mkdir /home/user2
mkdir /home/user2/Pulpit2
mkdir /home/user2/Pulpit2/katalog2


mkdir /home/user3
mkdir /home/user3/Pulpit3
mkdir /home/user3/Pulpit3/katalog3

touch /home/user1/Pulpit1/plik_info1
touch /home/user2/Pulpit2/plik_info2
touch /home/user3/Pulpit3/plik_info3
tree /home
 
userdel u1
userdel u2
userdel u3

userdel g1
userdel g2
userdel g3