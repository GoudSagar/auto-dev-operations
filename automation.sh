#!/bin/bash
echo "Install httpd package"
yum install httpd -y

echo "Copy index.html in /var/www/html" 
cp -r /tmp/index.html /var/www/html/

echo " Enable and start httpd service"
systemctl enable httpd
systemctl start httpd

echo "Check the status of service"
ps -ef | grep -v grep | grep -i httpd 

