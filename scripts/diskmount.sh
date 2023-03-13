#!/bin/bash
#This script is used to mount extra disk
sudo mkdir /mnt/group6
lsblk
sleep 5
sudo mkfs.ext2 /dev/xvdf
lsblk
sleep 5
sudo mount /dev/xvdf /mnt/group6
lsblk
sleep 5
df -h /mnt/group6
echo "/dev/xvdf /mnt/group6 ext2 default 0 1" | sudo tee -a /etc/fstab
lsblk
sleep 5
cd /etc
cat fstab


sudo umount /dev/xvdf /mnt/group6
lsbls
cat /etc/fstab
sleep5
sudo sed -i '/mnt/d' /etc/fstab
cat /etc/fstab
cd /mnt
sudo rm -rf group6
ls

