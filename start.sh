#!/bin/sh

minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
docker build -t nginx_image ./nginx/
docker build -t ftps_image ./ftps/

kubectl apply -f ./configmap.yaml
kubectl apply -f ./nginx/nginx.yaml
kubectl apply -f ./ftps/ftps.yaml
kubectl get svc
kubectl get deployments
