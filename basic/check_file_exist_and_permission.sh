#!/bin/bash
#
#  User will be asked to input a file/folder name , then it will be checked
#  1) exist?
#  2) file or folder
#  3) permission of current user
#
#  Author  :  gin
#  Mail    :  bobo1314love@vip.qq.com
#
#  Build on  : 2017/10/26 09:47
#  Update on : 2017/10/26 09:47

PATH=/bin:/sbin:/usr/bin:/usr/local/bin
export PATH

read -p "Please input a file/folder name : " name
test -z $name && echo "file/folder name , can not be null" && exit 0

test ! -e $name && echo "file/folder : $name do not exist." && exit 0

test -f $name && echo "$name is a file" || echo "$name is a folder"

test -r $name && perm="Readable"
test -w $name && perm="${perm} Writeable"
test -x $name && perm="${perm} Executeable"

echo "permission is $perm"
exit 0
