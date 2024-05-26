________________________________________
DONE:
----------------------------------------

- Create a basic architecture skeleton with Yaml-files
- Create Azure deployment templates "for fun"
- Kick ass!
- Be fabulous!
- Have the best team-mates ever! <3

26.05
- Added backend scripts
- Ordered the files and created ToolKit
- Services have been melted in deployment templates for organisational purposes
- Basic test of the basic infrastructure will be done (http, no cert)
________________________________________
TO CHECK:
----------------------------------------

- **backup-cronjob**: Write DB name here when instanciated. Checking that the volume claim is not using the same volume as the db. If the volume fails, all is lost. Back ups need to be store separately

- **mongodb-deployment**: secrets and credentials need to be defined here.
- **mongodb-pvc**: could be a bit more nerdy and add a StorageClass like rauncher

- **ingress**: need to update spec:- host: with our subdomain once defined

________________________________________
TO TEST:
----------------------------------------
- **namespace**: good to go
- **mongodb-service**: done
- **frontend-deployment**:  done
- **frontend-hpa**: done

________________________________________
TO DO NEXT:
----------------------------------------
- Validate first tests and create configmaps and secrets
- Deploy a vault k8 or let's encrypt to secure the app
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


