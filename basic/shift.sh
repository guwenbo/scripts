#!/bin/bash
#
# This script will show you the funciton of shift in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 15:20
# Update in : 2017/10/26 15:20

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

[ "$#" -lt 2 ] && echo "you must give at least 2 params to script" && exit 0

echo "The first param is \$1 ===> $1"

shift

echo "After shift"

echo "The first param is \$1 ===> $1"

exit 0
