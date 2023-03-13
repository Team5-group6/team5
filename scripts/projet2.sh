
#!/bin/bash
#This script will be used to create directory
echo -n " please enter a directoryname: "
read directoryname
pwd
mkdir $directoryname
cd $directoryname
touch team2
echo "We are Etech Engineers" >> team2
