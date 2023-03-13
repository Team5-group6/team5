#!/bin/bash
#This script will be used to remotely copy a file to 3 differents servers.

ip=( 172.31.14.23 172.31.11.232 172.31.49.93 )
 for n in ${ip[@]}; do

scp -i key mount.sh ubuntu@$n:/home/ubuntu
done

