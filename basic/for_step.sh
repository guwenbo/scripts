#!/bin/bash
#
# This script will show you how to write "for do...done" in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 17:30
# Update in : 2017/10/26 17:30

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

sum=0

for ((i=1;i<=100;i++))
do
  sum=$(($sum+$i))
done

echo $sum

exit 0
