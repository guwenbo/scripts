#!/bin/bash
#
# This script will show you the special arguments in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 15:10
# Update in : 2017/10/26 15:10

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

echo "The script name is ===> $0"

echo "Total params is ===> $#"

[ "$#" -lt 2 ] && echo "Total params is less than 2 , exit" && exit 0

echo "Your whole params is  ===>  $@"

echo "The first param is  ===> $1"

echo "The second param is  ===> $2"
