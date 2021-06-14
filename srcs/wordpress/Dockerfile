FROM alpine:3.12

RUN		apk update && apk upgrade
RUN		apk add nginx supervisor lighttpd php-fpm php7-common php7-session php7-iconv \
		php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi \
		fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt \
		php7-gettext php7-ldap php7-ctype php7-dom

RUN mkdir -p /var/www/
COPY srcs/wordpress-5.7-ru_RU.tar.gz .
RUN tar -z -x -v -f ./wordpress-5.7-ru_RU.tar.gz
RUN mkdir -p /var/www/
RUN mv ./wordpress /var/www/
COPY srcs/wp-config-sample.php /var/www/wordpress/wp-config.php

RUN chown -R root:root /var/www/wordpress
RUN chmod 777 /var/www/wordpress
RUN mkdir -p /run/nginx
COPY srcs/default /etc/nginx/conf.d/default.conf

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh
COPY srcs/supervisor.conf /etc/supervisord.conf
EXPOSE 5050
CMD /scripts/start.sh
