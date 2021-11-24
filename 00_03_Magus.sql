/*
SQL Server in Containers.
*/

/*
 TSQL to findout SQL Server up time. 
*/

set nocount on 
select datediff(mi,create_date, getdate() ) [SQL Server up-time in Minutes]
from sys.databases where name = 'tempdb'
Go 

/*
 Query to find out the O/S version. 
*/
SELECT host_platform OS, host_distribution, host_release Version, left(@@version,25) Type
FROM sys.dm_os_host_info;
Go 