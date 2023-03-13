
#!/bin/bash
#This script will be used to back up a content of a server
cat /var/log/auth.log > monitor.log

sshpass -p "123" scp monitor.log zach@172.31.29.128:/home/ubuntu
