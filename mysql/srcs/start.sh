#!/bin/sh

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql  < /run/mysql/wordpress_db
mysql -u root wordpress < /run/mysql/wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe
