#!/bin/sh

mv ../config.inc.php /var/www/phpmyadmin/
rm -rf /phpMyAdmin-5.0.4-all-languages.zip
sh
# nginx -g 'daemon off;'
/usr/bin/supervisord -c /etc/supervisord.conf
