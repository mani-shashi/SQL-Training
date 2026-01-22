/*         Adventure DB Setup for mac, using (docker)


docker run -e 'ACCEPT_EULA=Y' \
-e 'SA_PASSWORD=Password@123#' \
-p 1433:1433 \
--name sqlserver \
-d mcr.microsoft.com/mssql/server:2022-latest

docker cp AdventureWorks2019.bak sqlserver:/var/opt/mssql/data/AdventureWorks2019.bak

sqlcmd -S localhost,1433 -U SA -P 'Password@123#' \
-Q "RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/data/AdventureWorks2019.bak'"

sqlcmd -S localhost,1433 -U SA -P 'Password@123#' \
-Q "RESTORE DATABASE AdventureWorksDB FROM DISK = '/var/opt/mssql/data/AdventureWorks2019.bak' WITH MOVE 'AdventureWorks2019' TO '/var/opt/mssql/data/AdventureWorks2019.mdf', MOVE 'AdventureWorks2019_log' TO '/var/opt/mssql/data/AdventureWorks2019_log.ldf'"
*/