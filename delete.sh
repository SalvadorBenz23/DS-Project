#!/bin/bash

# Delete Backup CronJob
kubectl delete -f backup-cronjob.yaml

# Delete HorizontalPodAutoscaler for Frontend
kubectl delete -f frontend-hpa.yaml

# Delete Ingress
kubectl delete -f ingress.yaml

# Delete Frontend
kubectl delete -f frontend-service.yaml
kubectl delete -f frontend-deployment.yaml

# Delete MongoDB
kubectl delete -f mongodb-service.yaml
kubectl delete -f mongodb-deployment.yaml
kubectl delete -f mongodb-pvc.yaml

# Delete the Namespace
kubectl delete -f namespace.yaml

echo "All resources have been deleted."
