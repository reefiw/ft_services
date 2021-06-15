#!/bin/sh
cd srcs
minikube stop
minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
# docker pull metallb/speaker:v0.8.2
# docker pull metallb/controller:v0.8.2
docker build -t nginx_image      ./nginx/
docker build -t ftps_image       ./ftps/
docker build -t mysql_image      ./mysql/
docker build -t phpmyadmin_image ./phpmyadmin/
docker build -t wordpress_image ./wordpress/
docker build -t grafana_image ./grafana/
docker build -t influxdb_image ./influxdb/

kubectl apply -f ./configmap.yaml
kubectl apply -f ./nginx/nginx.yaml
kubectl apply -f ./ftps/ftps.yaml
kubectl apply -f ./mysql/mysql.yaml
kubectl apply -f ./phpmyadmin/phpmyadmin.yaml
kubectl apply -f ./wordpress/wordpress.yaml
kubectl apply -f ./grafana/grafana.yaml
kubectl apply -f ./influxdb/influxdb.yaml

kubectl get svc
kubectl get deployments
