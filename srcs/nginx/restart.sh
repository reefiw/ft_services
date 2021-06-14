#!/bin/sh
kubectl delete deployment nginx-deployment
kubectl delete svc nginx-svc
eval $(minikube docker-env)
docker build -t nginx_image nginx/.
kubectl apply -f nginx/nginx.yaml
