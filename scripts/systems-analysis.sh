#!/bin/bash
#This script will be used to do a system analysis

sudo apt update -y
 cat /etc/os-release
 echo $SHELL
 df -h
 free -g
 lscpu
 top
whoami
cat /etc/os-release > Group6.log
pwd
echo “ welcome to Etech Consulting Devops MasterClass ”
echo $?
