
# download the AdventureWorks2014.bak file
# https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2014.bak

# cd c:\temp 
# curl -L -o AdventureWorks2014.bak 'https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2014.bak'

# Retrieve pod name to variable
# kubectl get pods
$pod = $(kubectl get pod -l app=mssql -o jsonpath="{.items[0].metadata.name}")
$pod
$pod | Set-Clipboard
# Copy adventureworks2014.bak db backup to pod
# kubectl cp /local/path namespace/podname:path/to/directory
# replace the pod name in the below command 
kubectl cp tinydb.bak  mssql-deployment-9f69fcdc-9p2sn:/var/opt/mssql/data

#kubectl cp mssql-deployment-584785959c-tmqd7:/var/opt/mssql/data/tinydb.bak ./tinydb.bak

# SA password: MySQL2019Password
$LoadBalancerIP = kubectl get service  mssql-service -o jsonpath='{ .status.loadBalancer.ingress[0].ip }'
$LoadBalancerIP