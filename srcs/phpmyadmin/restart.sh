#!/bin/sh
kubectl delete deployment phpmyadmin-deployment
kubectl delete svc phpmyadmin-svc
eval $(minikube docker-env)
docker build -t phpmyadmin_image phpmyadmin/.
kubectl apply -f phpmyadmin/phpmyadmin.yaml
