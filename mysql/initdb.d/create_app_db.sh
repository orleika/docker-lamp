#!/bin/bash -eu

mysql=( mysql --protocol=socket -uroot -p"${MYSQL_ROOT_PASSWORD}" )
database="app"

"${mysql[@]}" <<-EOSQL
  CREATE DATABASE IF NOT EXISTS ${database};
  GRANT ALL ON ${database}.* TO '${MYSQL_USER}'@'%' ;
EOSQL
