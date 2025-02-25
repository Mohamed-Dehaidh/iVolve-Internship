#!/bin/bash
##Loop and ping all servers in subnet "172.16.17.x"
for i in {0..255}; do
##Define the current IP address
  IP="172.16.17.$i"
  ping -W 1 -c 1 $IP
##check status of the server
  if [ $? -eq 0 ]; then
    echo "Server $IP is up and running"
   else
    echo "Server $IP is unreachable"
  fi
done
