#!/bin/bash
# 
# The script will ask user to input two integer numbers , and print result after cross them.
#
# Author  :  gin
# Mail    : bobo1314love@vip.qq.com
# 
# Build on 2017/10/23 18:08
# Update on 2017/10/23 18:08

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

read -p "Please input first number : " first_num
read -p "Please input second number : " second_num

result=$(( $first_num * $second_num ))

echo -e "The result is $result"
