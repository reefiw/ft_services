#!/bin/sh

minikube stop
minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
docker build -t nginx_image ./nginx/
docker build -t ftps_image ./ftps/
docker build -t mysql_image ./mysql/

kubectl apply -f ./configmap.yaml
kubectl apply -f ./nginx/nginx.yaml
kubectl apply -f ./ftps/ftps.yaml
kubectl apply -f ./mysql/mysql.yaml
kubectl get svc
kubectl get deployments
