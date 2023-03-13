#!/bin/bash
# This script will be use to mount 4 disk to this instance

disk=(f g h i)

for disk in ${disk[@]}; do
sudo mkdir /mnt/team6$disk
sleep 5
sudo mkfs.ext2 /dev/xvd$disk
lsblk
sleep 10
sudo mount /dev/xvd$disk /mnt/team6$disk
lsblk
sleep 10
echo "dev/xvd$disk /mnt/team6$disk ext2 defaults 0 1" | sudo tee -a /etc/fstab
done
