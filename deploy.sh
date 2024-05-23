#!/bin/bash

# Deploy the Namespace
kubectl apply -f namespace.yaml

# Deploy MongoDB
kubectl apply -f mongodb-deployment.yaml
kubectl apply -f mongodb-service.yaml
kubectl apply -f mongodb-pvc.yaml

# Deploy Frontend
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

# Deploy Ingress
kubectl apply -f ingress.yaml

# Deploy HorizontalPodAutoscaler for Frontend
kubectl apply -f frontend-hpa.yaml

# Deploy Backup CronJob
kubectl apply -f backup-cronjob.yaml

echo "All resources have been deployed."
