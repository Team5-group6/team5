#!/bin/bash

# This script is to umount the 4 disk mounted realier

disk=(f g h i)

for disk in ${disk[@]}; do

sudo umount /dev/xvd$disk /mnt/team6$disk
lsblk
sleep 5
done

