
kubectl version --short 

kubectl get nodes
kubectl get nodes -o wide 

kubectl config -h 
kubectl config get-clusters 
kubectl config get-contexts 
kubectl config use-context AKS-SQLSRV 
kubectl config use-context docker-desktop 
kubectl config current-context 

# kubectl [command] [TYPE] [NAME] [flags]
# command: create, get, describe, delete
# Type: resource type e.g. Pod, Deployment, namespace, service
# flags: optional e.g. --output -o


#region deployment IMPERATIVE
kubectl create deployment hello-world --image=gcr.io/google-samples/hello-app:1.0
kubectl get pods 
kubectl get pods -o wide 
kubectl scale deployment hello-world --replicas=5 #instant scaling
kubectl get pods -o wide #note the pods distributed on nodes 
kubectl get pods 
# Look at the Pods from Lens. 
kubectl delete deployment hello-world 
kubectl get pods 
#endregion 

