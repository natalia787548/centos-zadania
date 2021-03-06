#!/bin/bash
rm -r /home/student
cd ~
mkdir kat1 
touch kat1/kat1a/plik1a
touch kat1/kat1a/plik1b
touch kat1/kat1a/kat1c
touch kat1/plik1
mkdir kat1b/kat1b

mkdir kopia
mkdir archiwum
mkdir rozpakowane

tree

cd /home/student/kat1/kat1c
cp -r /home/student/kat1 /home/student/kat1c
cd ~
tar -czvf archiwum/kat1_arch.tar /home/student/kat1
cd ~

tree
cd /home/student/rozpakowane
tar -tf /home/student/archiwum/kat1_arch.tar

cd /home/student/kat1/kat1c
tar -xf /home/student/archiwum/kat1_arch.tar -C /home/student/rozpakowane

tree