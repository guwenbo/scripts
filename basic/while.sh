#!/bin/bash
#
# This script will show you how to write "while do...done" in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 16:30
# Update in : 2017/10/26 16:30

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

while [ "$yn" != "YES" -a "$yn" != "yes" ]
do
  read -p "Please input (YES/yes) to exit : " yn
done

exit 0
