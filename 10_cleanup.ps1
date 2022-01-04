# Step 1 
az login 

# step 2
kubectl delete service mssql-service
kubectl delete deployment mssql-deployment 
kubectl delete pvc mssql-data 
kubectl delete secret mssql-secret 

# Step 3 
az account set -s $AzureSub
az aks delete --name $AKS --resource-group $RG --yes -y
az group delete --name $RG --yes -y

# step 4 
docker container stop $(docker ps -aq)
docker container rm $(docker ps -aq)