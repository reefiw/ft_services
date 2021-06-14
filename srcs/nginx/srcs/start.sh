#!/bin/sh

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/cert.key -out /etc/nginx/ssl/cert.csr -subj '/CN=plurlene.com'

/usr/bin/supervisord -c /etc/supervisord.conf
