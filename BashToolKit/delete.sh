#!/bin/bash

# Delete Backup CronJob
kubectl delete -f backup-cronjob.yaml -n ds-project

# Delete HorizontalPodAutoscaler for Frontend
kubectl delete -f frontend-hpa.yaml -n ds-project

# Delete Ingress
kubectl delete -f ingress.yaml -n ds-project

# Delete Frontend
kubectl delete -f frontend-service.yaml -n ds-project
kubectl delete -f frontend-deployment.yaml -n ds-project

# Delete MongoDB
kubectl delete -f mongodb-service.yaml -n ds-project
kubectl delete -f mongodb-deployment.yaml -n ds-project
kubectl delete -f mongodb-pvc.yaml -n ds-project

# Delete the Namespace
kubectl delete -f namespace.yaml -n ds-project

echo "All resources have been deleted."
