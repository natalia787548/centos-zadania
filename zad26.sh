#!/bin/bash
FILE = plik.txt
function menu {
    echo "zmien prawa wlasciciela do pliku"
    echo "1- pokaz istniejace prawa do pliku"
    echo "2- zmien na: rwx"
    echo "3- zmien na: rw-"
    echo "4- zmien na r--"
    echo "5- zmen na: ---"
    echo "6- wyjscie"
    echo "wybierz opcje?"
    read OPTION

    if ($OPTION == 1); then
        ls -l | grep "$FILE"
    elif ($OPTION == 2); then
        chmod 700 $FILE
    elif ($OPTION == 3); then
        chmod 600 $FILE
    elif ($OPTION == 4); then
        chmod 400 $FILE
    elif ($OPTION == 5); then
        chmod 000 $FILE
    elif ($OPTION == 6); then
        exit
    fi
}

cd ~
touch $FILE
while :
do
    menu
done