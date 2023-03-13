#!/bin/bash
# This script will be used to mount and umount 4 disk to the server
disk=(f g h i)
for disk in ${disk[@]}; do
sudo mkdir /mnt/aubin$disk
lsblk
sleep 5
sudo mkfs.ext2 /dev/xvd$disk
lsblk
sleep 5
sudo mount /dev/xvd$disk /mnt/aubin$disk
lsblk
sleep 5
echo "/dev/xvd$disk /mnt/aubin$disk ext2 default 0 1" | sudo tee -a /etc/fstab
lsblk
sleep 5
sudo umount /dev/xvd$disk /mnt/aubin$disk
lsbls
cat /etc/fstab
sleep5
sudo sed -i '/mnt/d' /etc/fstab
cat /etc/fstab
cd /mnt
sudo rm -rf aubin$disk
ls
done
