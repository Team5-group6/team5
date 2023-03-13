#!/bin/bash
#This disk is to unmount disk


sudo umount /dev/xvdf /mnt/group6
lsbls
cat /etc/fstab
sleep5
sudo sed -i '/mnt/d' /etc/fstab
cat /etc/fstab
cd /mnt
sudo rm -rf group6
ls

