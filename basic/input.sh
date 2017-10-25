#!/bin/bash
#
# This script will ask user to input a varibale and print it on screen
# 
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
# Build on 2017/10/23 17:30
# Update on 2017/10/23 17:30

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

read -p "Please input a variable : " var
echo -e "Oh, you just input $var."
exit 0
