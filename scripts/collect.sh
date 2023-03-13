#!/bin/bash 
# This script will create a file, collect logs and print my team member names and copy to a remote location. 
touch team4-group4
cp /var/log/kern.log team4-group6 
echo "Nelson Francis Saada Dozie" >> team4-group6 
scp -i key team4-group6 ubuntu@172.31.30.252:/tmp
