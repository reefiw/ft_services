#!/bin/sh
kubectl delete deployment wordpress-deployment
kubectl delete svc wordpress-svc
eval $(minikube docker-env)
docker build -t wordpress_image wordpress/.
kubectl apply -f wordpress/wordpress.yaml
