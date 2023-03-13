#!/bin/bash
#This script will be used to move file with password
cd zach
mv team2 /home/ubuntu
cd ~
cat -n team2
#password="123"
#user="zach"
#ips=( 172.31.63.205 172.31.57.117 172.31.52.171 )
#for i in ${ips[@]}; do
sshpass -p "123" scp team2 zach@172.31.63.205:/home/ubuntu
#done
rm -rf team2
cd scripts
rm -rf zach
echo $?
