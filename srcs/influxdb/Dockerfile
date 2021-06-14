FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add influxdb supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY srcs/supervisor.conf /etc/supervisord.conf
RUN mkdir /etc/telegraf
RUN telegraf --input-filter docker --output-filter influxdb config > /etc/telegraf/telegraf.conf
RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh

EXPOSE 8086

CMD /scripts/start.sh
