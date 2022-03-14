#!bin/bash
#export DEBIAN_FRONTEND=noninteractive
#apt update -y
#mv default /etc/nginx/sites-available/
#mv wordpress /var/www/html/
#mv wp-config.php /var/www/html/wordpress/
#cd /var/www/html/wordpress
#chown www-data:www-data /var/www/html/wordpress -R
service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 -F -R
#service mysql start
#mysql -u root <<-EOF
#UPDATE mysql.user SET Password=PASSWORD('$rootpass') WHERE User='root';
#DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
#DELETE FROM mysql.user WHERE User='';
#DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
#FLUSH PRIVILEGES;
#EOF
#mysql -u root -e 'CREATE USER "wpuser"@"localhost" IDENTIFIED BY "Surprise123.";'
#mysql -u root -e "CREATE DATABASE wordpress;"
#mysql -u root -e "GRANT ALL PRIVILEGES ON *.* to 'wpuser'@'localhost';"
#mysql -u root -e "FLUSH PRIVILEGES;"
#nginx -g 'daemon off;'
