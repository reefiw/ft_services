FROM alpine:3.12

RUN		apk update && apk upgrade
RUN		apk add nginx supervisor openrc lighttpd php7-common php7-session php7-iconv php7-json php7-gd php7-curl \
		php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix \
		php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom


COPY srcs/lighttpd.conf /etc/lighttpd/lighttpd.conf
RUN mkdir -p /usr/share/webapps/
RUN wget -O /usr/share/webapps/phpMyAdmin-5.0.2-all-languages.tar.gz http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz

COPY srcs/default /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN mkdir -p /run/nginx

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh

EXPOSE 5000
CMD /scripts/start.sh
