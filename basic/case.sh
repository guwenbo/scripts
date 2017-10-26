#!/bin/bash
#
# This script will show you how to write "case...esac" in shell script
#
# Author  :  gin
# Mail    :  bobo1314love@vip.qq.com
#
# Build on : 2017/10/26 16:00
# Update in : 2017/10/26 16:00

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

month=$(date +%m)

case $month in
  1)
    echo "Now is Jan"
  ;;
  2)
    echo "Now is Feb"
  ;;
  3)
    echo "Now is Mar"
  ;;
  4)
    echo "Now is Apr"
  ;;
  5)
    echo "Now is May"
  ;;
  6)
    echo "Now is June"
  ;;
  7)
    echo "Now is July"
  ;;
  8)
    echo "Now is Aug"
  ;;
  9)
    echo "Now is Sept"
  ;;
  10)
    echo "Now is Oct"
  ;;
  11)
    echo "Now is Nov"
  ;;
  12)
    echo "Now is Dec"
  ;;
  *)
    echo "No result matched"
  ;;
esac
