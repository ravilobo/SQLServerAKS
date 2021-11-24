az login 

# wait for the above step to complete. 
az account set -s $AzureSub
az group create --name $RG --location $Region

# if AKS creation fails, use the below command to get the supported versions. 
# az aks get-versions --location eastus2
az aks create `
 --resource-group $RG `
 --generate-ssh-keys `
 --name $AKS `
 --kubernetes-version $KubernetesVersion `
 --node-vm-size Standard_E8s_v3 `
 --node-count 2

# since we can't access the control plane node in AKS, 
# use the below command to fetch credentials and save to local user folder 
az aks get-credentials --resource-group $RG --name $AKS --overwrite-existing

$KubeConfig = $env:KUBECONFIG
$KubeConfig
get-content $KubeConfig

# cluster in portal
# @bweissman (Ben Weissman)
$ClusterID = (az aks show -g $RG -n $AKS --query id -o tsv)
$TenantID = (az aks show -g $RG -n $AKS --query identity.tenantId -o tsv)
$ClusterURL = "https://portal.azure.com/#@" + $TenantID + "/resource" + $ClusterID
Start-Process $ClusterURL

az aks show --resource-group $RG --name $AKS --query agentPoolProfiles #find the nodepool name
az aks scale --resource-group $RG --name $AKS --node-count 1 --nodepool-name 'nodepool1'
az aks scale --resource-group $RG --name $AKS --node-count 3 --nodepool-name 'nodepool1'

# To scale a user pool to 0, you can use the az aks nodepool scale 
az aks nodepool scale --name 'nodepool1' --cluster-name $AKS --resource-group $RG  --node-count 0
