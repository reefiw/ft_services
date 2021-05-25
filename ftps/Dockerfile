FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add vsftpd openrc openssl

RUN echo "root:123" | chpasswd

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
COPY srcs/vsftpd.conf etc/vsftpd/vsftpd.conf
RUN chmod 777 /scripts/start.sh

EXPOSE 21 30021

CMD /scripts/start.sh
