#!/bin/bash
#This script will be used to move file with password
cd team5-group6
cp group6 /home/ubuntu
cd ~
cat -n group6
password="123"
user="zach"
ips=( 172.31.63.205 172.31.56.47 172.31.49.164 )
for i in ${ips[@]}; do
echo $i;
sshpass -p "$password" scp group6 $user@$i:/home/ubuntu;
done
rm -rf group6
cd code/team5/scripts  
rm -rf zach
echo $?
#sshpass -p "123" scp group6 zach@172.31.63.205:/home/ubuntu
#echo $?
