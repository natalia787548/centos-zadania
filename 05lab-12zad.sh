#!/bin/bash
cd ~
mkdir kat1
mkdir kat1/kat1a
mkdir kat1/kat1b
touch kat1/kat1a/plik1a
touch kat1/kat1b/plik1b
touch kat1/plik1

mkdir kopia
mkdir archiwum
mkdir rozpakowane

tree

cd /home/student/kat1/kat1b
cp -r /home/student/kat1 /home/student/kopia
cd ~ 
tar -czvf archiwum/kat1_arch.tar /home/student/kat1 
cd ~
tree
cd /home/student/rozpakowane
tar -tf /home/student/archiwum/kat1_arch.tar

cd /home/student/kat1/kat1b
tar -xf /home/student/archchiwum/kat1_arch.tar -C /home/student/rozpakowane

tree