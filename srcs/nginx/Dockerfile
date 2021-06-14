FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx openssl supervisor

COPY srcs/default /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN mkdir etc/nginx/ssl
RUN mkdir -p /run/nginx

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh

EXPOSE 80 443
CMD /scripts/start.sh
