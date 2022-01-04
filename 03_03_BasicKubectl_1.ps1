
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

#expose service 
kubectl create deployment hello-world --image=gcr.io/google-samples/hello-app:1.0
kubectl get deployment
kubectl get pods 
kubectl expose deployment hello-world --port=80 --target-port=8080 --type=LoadBalancer 
kubectl get service hello-world 
$serviceIP = (kubectl get service hello-world -o jsonpath='{ .status.loadBalancer.ingress[0].ip }')
$serviceIP
'http://'+$serviceIP | Set-Clipboard
http://xxx.xxx.xxx.xxx
kubectl delete service hello-world 
kubectl delete deployment hello-world
