#!/bin/sh
kubectl delete deployment influxdb-deployment
kubectl delete svc influxdb-svc
eval $(minikube docker-env)
docker build -t influxdb_image influxdb/.
kubectl apply -f influxdb/influxdb.yaml
