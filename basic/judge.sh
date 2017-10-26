#!/bin/bash
#
# User will be asked to input (y/n) and show the choice
#
# Author  :  gin
# Mail    : bobo1314love@vip.qq.com
#
# Build on 2017/10/26 14:58
# Update on 2017/10/26 14:58

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

read -p "Please input (Y/N): " yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK, continue ." && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh, interrupt !" && exit 0
echo "I don't know what your choice." && exit 0
