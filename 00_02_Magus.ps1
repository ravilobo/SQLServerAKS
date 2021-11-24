clear-host 
$containerName = "myContainer$($(get-random))"
$containerName 
$containerName|Set-Clipboard

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=ThisIsAPassword123@#$" `
 -p 1433:1433 --name myContainer928818913 `
 -d mcr.microsoft.com/mssql/server
 
<#
ThisIsAPassword123@#$
Docker ps 
docker container ls 
#>