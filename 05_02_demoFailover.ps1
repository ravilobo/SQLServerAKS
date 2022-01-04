# Simulate a failure by killing the pod
# you can delete the pod from lens
kubectl get pods -o wide 

$pod = $(kubectl get pod -l app=mssql -o jsonpath="{.items[0].metadata.name}")
kubectl delete pod $pod

kubectl get pods -o wide 
#kubectl describe pod -l app=mssql