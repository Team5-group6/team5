#!/bin/bash
#This script will be used to collect and scp a file

echo -n " please enter a filename: "
read filename
cat /var/log/kern.log > $filename
echo -n " please enter firstpersone: "
read firstpersone
echo $firstpersone >> $filename
echo -n " please enter secondpersone: "
read secondpersone
echo $secondpersone >> $filename
scp -i key $filename ubuntu@172.31.30.252:/tmp

