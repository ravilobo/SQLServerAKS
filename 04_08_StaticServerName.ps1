# Anthony Nocentino 
# https://www.nocentino.com/posts/2020-10-31-persistent-servername-when-deploying-sql-server-in-kubernetes/

#kubectl delete service mssql-service
kubectl delete deployment mssql-deployment 
kubectl delete pvc mssql-data 
kubectl apply -f storage.yaml
#kubectl delete secret mssql-secret 
kubectl apply -f deploymentStaticName.yaml
kubectl get pods 