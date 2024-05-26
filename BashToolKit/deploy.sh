#!/bin/bash

# Deploy the Namespace
kubectl apply -f namespace.yaml 

# Deploy MongoDB
kubectl apply -f mongodb-deployment.yaml -n ds-project
kubectl apply -f mongodb-service.yaml -n ds-project
kubectl apply -f mongodb-pvc.yaml -n ds-project

# Deploy Frontend
kubectl apply -f frontend-deployment.yaml -n ds-project
kubectl apply -f frontend-service.yaml -n ds-project

# Deploy Ingress
kubectl apply -f ingress.yaml -n ds-project

# Deploy HorizontalPodAutoscaler for Frontend
kubectl apply -f frontend-hpa.yaml -n ds-project

# Deploy Backup CronJob
kubectl apply -f backup-cronjob.yaml -n ds-project

echo "All resources have been deployed." 
