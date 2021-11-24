# Simulate a failure by killing the pod
# you can delete the pod from lens
kubectl get pods -o wide 
kubectl delete pod mssql-deployment-584785959c-77kvz
kubectl get pods -o wide 
#kubectl describe pod -l app=mssql