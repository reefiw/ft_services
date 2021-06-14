#!/bin/sh

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/cert.key -out /etc/ssl/private/cert.csr -subj '/CN=plurlene.com'

vsftpd etc/vsftpd/vsftpd.conf
