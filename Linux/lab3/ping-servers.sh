#!/bin/bash
##Define the current IP address
IP="172.16.17."
##Loop and ping all servers in subnet "172.16.17.x"
for i in {0..255}; do
  ping -W 1 -c 1 ${IP}.$i
##check status of the server
  if [ $? -eq 0 ]; then
    echo "Server $IP is up and running"
   else
    echo "Server $IP is unreachable"
  fi
done
