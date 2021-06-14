#!/bin/sh
kubectl delete deployment grafana-deployment
kubectl delete svc grafana-svc
eval $(minikube docker-env)
docker build -t grafana_image grafana/.
kubectl apply -f grafana/grafana.yaml
