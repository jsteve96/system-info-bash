#!/bin/bash
echo "#################################" >> info1.txt
date >> info1.txt

echo "+ System Hostname:" >> info1.txt
hostname >> info1.txt

cat /etc/resolv.conf | grep name >> info1.txt

echo "+ Operating System and Kernel Information:" >> info1.txt
sudo lsb_release -a >> info1.txt
hostnamectl >> info1.txt

echo "+ Uptime for this Server:" >> info1.txt
uptime >> info.txt

echo "+ CPU Information:" >> info.txt
cat /proc/cpuinfo | grep 'vendor' | uniq >> info1.txt
cat /proc/cpuinfo | grep 'model name' | uniq >>info1.txt
cat /proc/cpuinfo | grep 'cpu MHz' | uniq >> info1.txt

echo "+ Memory" >> info1.txt
free -h >> info1.txt

echo "+ Network Information:" >> info1.txt
ip addr >> info1.txt

echo "+ File System Utilization:" >> info1.txt
df -h >> info1.txt
lsblk >> info1.txt

echo "+ Last Error Messages:" >> info1.txt
tail -5 /var/log/syslog | grep -i 'error' >> info1.txt
