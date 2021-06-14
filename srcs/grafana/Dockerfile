FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add libc6-compat

COPY srcs/grafana-enterprise-8.0.1.linux-amd64.tar.gz ./grafana.tar.gz
RUN tar -z -x -v -f ./grafana.tar.gz
COPY srcs/grafana.db ./grafana-8.0.1/data/grafana.db

RUN mkdir /scripts/
COPY srcs/start.sh /scripts/start.sh
RUN chmod 777 /scripts/start.sh

EXPOSE 21 30021

CMD /scripts/start.sh
