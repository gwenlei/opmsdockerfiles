docker run  -d -p 3307:3306 -v /home/code/testgo/src/dockerfiles/db:/mnt ftp:1

docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=aiopms -d -p 3306:3306 -v /home/code/testgo/src/dockerfiles/db:/docker-entrypoint-initdb.d mysql:5.6 --character-set-server=utf8 --collation-server=utf8_unicode_ci 

mysql -uroot -pmy-secret-pw -e "create database aiopms;"
mysql -uroot -pmy-secret-pw -Daiopms </mnt/aiopms.sql


docker run -d -p 3306:3306 -v /home/code/testgo/src/dockerfiles/db:/mnt ftp:1

docker run -it --rm mysql:5.6 --verbose --help

show variables like '%coll%';  
set collation_connection='utf8_unicode_ci'
show variables like '%char%';

To see what values a running MySQL server is using, type
'mysqladmin variables' instead of 'mysqld --verbose --help'.

mysqladmin -pmy-secret-pw variables

mysql> show variables like '%char%';
+--------------------------+----------------------------+
| Variable_name            | Value                      |
+--------------------------+----------------------------+
| character_set_client     | latin1                     |
| character_set_connection | latin1                     |
| character_set_database   | utf8                       |
| character_set_filesystem | binary                     |
| character_set_results    | latin1                     |
| character_set_server     | utf8                       |
| character_set_system     | utf8                       |
| character_sets_dir       | /usr/share/mysql/charsets/ |
+--------------------------+----------------------------+


