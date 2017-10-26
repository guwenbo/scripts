#!/bin/bash
#
# This script can help you to check your local port status
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 15:35
# Update in : 2017/10/26 15:35

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

if [[ "$#" -lt 1 ]]; then
  echo "Please given at least a port."
  exit 0
fi

status=$(netstat -tuln)

for port in $@
do
  if [[ $port != *[0-9]* ]]; then
    echo "The port only can be number"
    continue
  fi

  bool=$(echo $status | grep ":$port ")

  if [[ $bool ]]; then
    echo "port : $port is opened"
  else
    echo "port : $port is closed"
  fi
done

exit 0
