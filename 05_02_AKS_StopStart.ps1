

#region STOP AKS 
az aks stop --name $AKS --resource-group $RG 
# You might get the following alert, first time.
# The command requires the extension aks-preview. Do you want to install it now? 
# The command will continue to run after the extension is installed. (Y/n): y

# Look for POWER STATE stopped. 
az aks show --name $AKS --resource-group $RG  --query powerState 
#endregion 



#region START AKS
$RG = "RG-SQLSRV-AKS"
$AKS = "AKS-SQLSRV"
az aks start --name $AKS --resource-group $RG 
az aks show --name $AKS --resource-group $RG  --query powerState 
#endregion 
