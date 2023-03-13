#!/bin/bash
#This script will be used to test my project
password="123"
user="zach"
ips=( 172.31.24.34 172.31.28.180 172.31.17.128 )
for i in ${ips[@]}; do
sshpass -p "$password" scp team2 $user@$i:/home/ubuntu
done

