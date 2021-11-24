#region labels 
kubectl get nodes
kubectl get nodes --show-labels 

kubectl label node aks-nodepool1-29389052-vmss000001 category=db_node

kubectl get node -L category

kubectl apply -f lables.yaml
kubectl get pods -o wide 
kubectl scale deployment lbl-node-depl --replicas=10
kubectl get pods -o wide 

kubectl get deployments 
kubectl delete deployment lbl-node-depl
#endregion 