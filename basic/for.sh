#!/bin/bash
#
# This script will show you how to write "for do...done" in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 16:50
# Update in : 2017/10/26 16:50

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

network="10.12.33"

for num in $(seq 1 100)
do
  ping -c 1 -w 1 ${network}.${num} &> /dev/null && result=0 || result=1
  if [[ $result -eq 0 ]]; then
    echo "IP : ${network}.${num} is up"
  else
    echo "IP : ${network}.${num} is down"
  fi
done

exit 0
