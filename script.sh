#!/bin/bash

echo "-----------OS-----------------"
cat /etc/os-release
echo "----------Users---------------"
cat /etc/passwd | grep '/bin/bash'
echo "----------Ports---------------"
sudo apt-get install net-tools -y &> /dev/null
netstat -tulpn | grep LISTEN
