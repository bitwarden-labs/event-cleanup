DECLARE @databaseName NVARCHAR(128) = 'vault'; -- Replace with your database name if non-default
DECLARE @sql NVARCHAR(MAX);

SET @sql = N'Declare @today datetime2;
Declare @expiration int;
Set @today = getdate();
Set @expiration = 5; -- The number of days of Event Log data you wish to retain
DELETE FROM ' + QUOTENAME(@databaseName) + '.[dbo].[Event] WHERE Date < (DATEADD(day, -(@expiration), @today));'

EXEC sp_executesql @sql;
