#!/bin/sh

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
# mysql -u root mysql  < /run/mysql/wordpress_db
echo "CREATE USER 'phpmyadmin' IDENTIFIED BY 'phpmyadmin';" | mysql -u root mysql
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root mysql
echo "GRANT ALL ON wordpress.* TO 'phpmyadmin' IDENTIFIED BY 'phpmyadmin';" | mysql -u root mysql
echo "FLUSH PRIVILEGES;" | mysql -u root mysql
mysql -u root wordpress  < /run/mysql/wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe
