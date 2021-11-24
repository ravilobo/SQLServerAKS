#region deployment DECLARATIVE 
kubectl apply -f mydeployment.yaml 
kubectl get deployment 
kubectl describe deployment 
kubectl get pods 

# updtae replicas in mydeployment.yaml 5 - 10 
kubectl apply -f mydeployment.yaml 
kubectl get deployment 
kubectl get pods 
kubectl get pods -o wide
kubectl delete pod       # self-healing 
kubectl delete deployment hello-world
#endregion 
