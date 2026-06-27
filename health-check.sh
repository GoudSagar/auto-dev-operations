#!/bin/bash
pid=`ps -ef | grep -i httpd | grep -v grep | awk 'NR==1 { print $2 }' | wc -l`
if [ $pid == 1 ];
then
  echo "HTTPD service is running"
else
  echo "HTTPD service is down"
  echo "Restarting HTTPD service"
  systemctl restart httpd
  echo "HTTPD service started"
fi
