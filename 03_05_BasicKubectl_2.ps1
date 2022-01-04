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

#region azure-vote
# git clone https://github.com/PacktPublishing/Hands-on-Kubernetes-on-Azure-Third-Edition.git Hands-On-Kubernetes-on-Azure
# Hands-on Kubernetes on Azure by Nills Franssens 
kubectl apply -f azure-vote.yaml
kubectl get svc 

$LoadBalancerIP = kubectl get service  azure-vote-front -o jsonpath='{ .status.loadBalancer.ingress[0].ip }'
$LoadBalancerIP
'http://'+$LoadBalancerIP | Set-Clipboard

# note: service being layer 4, we have to use HTTP
# browse the link from azure jump box when public IP is blocked on-prem 
http://xxx.xxx.xxx.xxx 

#endregion 