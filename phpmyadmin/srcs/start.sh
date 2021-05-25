#!/bin/sh


unzip /usr/share/phpmyadmin/phpMyAdmin-5.1.0-all-languages.zip
mv /phpMyAdmin-5.1.0-all-languages/* /usr/share/phpmyadmin/
mv /usr/share/phpmyadmin/config.inc.php /usr/share/phpmyadmin/
rm -rf /usr/share/phpmyadmin/phpMyAdmin-5.1.0-all-languages.zip
php-fpm7 start
sh
# nginx -g 'daemon off;'
# /usr/bin/supervisord -c /etc/supervisord.conf
