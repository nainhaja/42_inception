#!bin/bash
#mv conf /etc/mysql/mariadb.conf.d/50-server.cnf

#if [ ! -f /var/lib/mysql/]; then

#mysql_install_db --user=mysql --datadir=/var/lib/mysql/
#chown -R mysql: /var/lib/mysql
#mkdir -p /run/mysqld
#inohup mysqld --user=root &
#sleep 2

#/usr/bin/mysqld_safe &
#	sleep 10s
service mysql start
sleep 2
#mysql -u root -e 'DROP USER "wpuser"@"localhost";'
mysql -u root -e 'CREATE USER "wpuser" IDENTIFIED BY "Surprise123.";'
mysql -u root -e 'CREATE DATABASE wordpress default character set utf8 collate utf8_unicode_ci;'

mysql -u root -e 'use wordpress; GRANT ALL on wordpress.* to "wpuser" identified by "Surprise123.";'

mysql -u root -e 'FLUSH PRIVILEGES;'

service mysql start
sleep 2
mysql -u root -e 'SET PASSWORD FOR "root"@"localhost" = PASSWORD("PASSWORD");'

mysql -u root -e 'UPDATE mysql.user SET plugin = "" WHERE user = "root" AND host = "localhost";'

mysql -u root -e 'FLUSH PRIVILEGES;'

service mysql restart

