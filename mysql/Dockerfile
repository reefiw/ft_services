FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add mysql mysql-client mariadb-common openrc

VOLUME /var/lib/mysql

RUN mkdir -p run/mysqld
RUN mkdir -p /run/openrc && touch /run/openrc/softlevel
RUN chown mysql /run/mysqld/
COPY srcs/wordpress_db /run/mysql/
COPY srcs/mysql.cnf /etc/my.cnf
RUN chmod +x /run/mysqld/

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh

EXPOSE 21 3306

CMD /scripts/start.sh
