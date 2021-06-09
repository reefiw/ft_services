#!/bin/sh
kubectl delete deployment mysql-deployment
kubectl delete svc mysql-svc
eval $(minikube docker-env)
docker build -t mysql_image mysql/.
kubectl apply -f mysql/mysql.yaml
