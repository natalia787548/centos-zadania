#!/bin/bash
cd ~

echo "podaj nazwe uzytkownika" 
read NAME

echo "podaj nazwe grupy"
read GROUP 


if grep -q $GROUP /etc/group && grep -q $USER /etc/passwd
then
	echo "podane dane istnieja"
else
	groupadd $GROUP
	useradd $NAME
	usermod -a -G $GROUP $NAME	
	passwd $NAME
	ls /home
userdel $NAME
groupdel $GROUP
