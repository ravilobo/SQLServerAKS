clear-host 
$containerName = "myContainer$($(get-random))"
$containerName 
$containerName | Set-Clipboard

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=ThisIsAPassword123@#$" `
 -p 1433:1433 --name myContainer1809074273 `
 -d mcr.microsoft.com/mssql/server

<#
ThisIsAPassword123@#$
Docker ps 
docker container ls 

docker container stop $(docker ps -aq)
docker container rm $(docker ps -aq)
#>