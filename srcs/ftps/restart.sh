#!/bin/sh
kubectl delete deployment ftps-deployment
kubectl delete svc ftps-svc
eval $(minikube docker-env)
docker build -t ftps_image ftps/.
kubectl apply -f ftps/ftps.yaml
