# step 1: service 
kubectl apply -f service.yaml 
<#
kubectl get services
#>

# step 2: storage 
kubectl apply -f storage.yaml
<#
kubectl get pv
kubectl get pvc
#>

# step 3: credentials 
kubectl create secret generic mssql-secret --from-literal=SA_PASSWORD="MySQL2019Password"
<#
kubectl get secrets
#>

# step 4: deploy 
kubectl apply -f deployment.yaml

<#
kubectl get deployments
kubectl logs deployment/mssql-deployment
kubectl get pods 
kubectl describe deployments mssql-deployment
kubectl logs mssql-deployment-[]-[]
#>