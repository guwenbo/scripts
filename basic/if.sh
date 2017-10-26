#!/bin/bash
#
# This script will show you how to write "if...then...fi" in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 15:25
# Update in : 2017/10/26 15:25

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

read -p "Please input (Y/N): " yn

if [[ -z "$yn" && -z "$1" ]]; then
  echo "Please input a string at least."
elif [ "$yn" == "Y" -o "$yn" == "y" ];then
  echo "OK, continue ."
elif [ "$yn" == "N" ] || [ "$yn" == "n" ];then
  echo "Oh, interrupt !"
else
  echo "I don't know what your choice."
fi

exit 0
