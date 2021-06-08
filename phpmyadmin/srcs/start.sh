
#!/bin/sh
rm -rf /phpMyAdmin-5.0.4-all-languages.zip

# nginx -g 'daemon off;'
/usr/bin/supervisord -c /etc/supervisord.conf
