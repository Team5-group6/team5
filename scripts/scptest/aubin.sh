#!/bin/bash
#This script will be used to remotely copy a file to 3 differents servers.

ip=( 172.31.14.23,/home/ubuntu/zach 172.31.11.232,/home/ubuntu/saada 172.31.49.93,/home/ubuntu/ruby )
 for n in ${ip[@]}; do
 IFS=","
 set -- $n;

scp -i key mount.sh ubuntu@$1:$2
done
