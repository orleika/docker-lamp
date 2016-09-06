#!/bin/bash -eu

mysql=`curl -s 127.0.0.1/mysql.php`
echo $mysql

if [ -n "`echo $mysql | grep version`" ]; then
  exit 0;
else
  exit 1;
fi
