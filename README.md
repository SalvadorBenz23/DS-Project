________________________________________
DONE:
----------------------------------------

- Create a basic architecture skeleton with Yaml-files
- Create Azure deployment templates "for fun"
- Kick ass!
- Be fabulous!
- Have the best team-mates ever! <3
________________________________________
TO CHECK:
----------------------------------------

- **namespace**: good to go

- **backup-cronjob**: database name should be given here and we should think of a better solution for the volume claim because it's using the same volume as the db. If the volume fails, all is lost. Back ups need to be store separately

- **mongodb-deployment**: we will not be using the image from the repo (too much work with APIs) but we will pull an out-of-the-box image from docker hub
- **mongodb-service**: The default port for MongoDB is usually 2707, will have to check with Sunny if the front-end config is already listening to another port
- **mongodb-pvc**: could be a bit more nerdy and add a StorageClass like rauncher

- **frontend-deployment**:  needs more work. I don't know what image is the best for Node.js deployments

- **ingress**: need to update spec:- host: with our subdomain once defined

- **frontend-hpa**: can go as it is. Just need to check if the apiVersion is the right one (apiVersion: autoscaling/v2 -> looks suspicious)

________________________________________
TO DO NEXT:
----------------------------------------

- Deploy a vault k8 or let's encrypt to secure the app
- Validate first tests and create configmaps and secrets
- Think of deployment with Helm charts
- Think of deployment with Kustomize 
- Think of a way to pull logs from the front-end pods and integrate them to a monitoring solution
________________________________________
TBA:
----------------------------------------
- Deployment in the cloud
- Deployment with Terraform
________________________________________
**Bash toolbox:**
----------------------------------------

Three scripts have been added for debug:
1. deploy.sh    -> deploys all ressources with ./deploy.sh
2. delete.sh    -> deletes all ressources with ./delete.sh
3. gets.sh      -> gets all the resources with ./gets.sh   (I did put an 's' to get's')

Don't forget to make the scripts executable if needed:

chmod +x deploy.sh
chmod +x delete.sh
chmod +x gets.sh


