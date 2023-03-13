#!/bin/bash
#This script is to scp into 3 other servers.
ip=(172.31.56.157,/location1 172.31.60.217,/location2 172.31.55.32,/location3)

for n in ${ip[@]}; do
	IFS=",";
	set -- $n;
	scp -i key test.sh ubuntu@$1:$2
done

