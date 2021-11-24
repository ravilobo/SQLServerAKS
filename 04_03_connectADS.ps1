

# SA password: MySQL2019Password
$LoadBalancerIP = kubectl get service  mssql-service -o jsonpath='{ .status.loadBalancer.ingress[0].ip }'
$LoadBalancerIP
$LoadBalancerIP | Set-Clipboard
azuredatastudio





