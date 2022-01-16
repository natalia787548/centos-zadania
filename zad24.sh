#!/bin/bash
function dodaj_uzytkownika  {
    groupadd $GROUP
	useradd $NAME
	usermod -a -G $GROUP $NAME	
	echo "uzytkownik: $NAME/ngrupa: $GROUP" >> plik.txt
    ls /home
    rm plik.txt
    userdel $NAME
    groupdel $GROUP
}

cd ~
echo "podaj nazwe uzytkownika" 
read NAME

echo "podaj nazwe grupy"
read GROUP 

if grep -q $GROUP /etc/group && grep -q $USER /etc/passwd
then
	echo "podane dane istnieja"
else
    dodaj_uzytkownika




