## script utilizado no SQL server para atualizar permissões de usuários, validando em todas databases da instância;

USE master
GO

DECLARE @DatabaseName VARCHAR(32)   
DECLARE @SQL NVARCHAR(max)
DECLARE @User VARCHAR(64)
SET @User = '[larissa]' --Your User

DECLARE Grant_Permission CURSOR LOCAL FOR
SELECT name FROM MASTER.dbo.sysdatabases
WHERE name NOT IN ('master','model','msdb','tempdb')  

OPEN Grant_Permission  
FETCH NEXT FROM Grant_Permission INTO @DatabaseName  
WHILE @@FETCH_STATUS = 0  
BEGIN 

  SELECT @SQL = 'USE '+ '[' + @DatabaseName + ']' +'; ' + 
	'ALTER ROLE [db_datareader] ADD MEMBER' + @user+'; '
	
	EXEC sp_change_users_login 'Auto_Fix', @User, NULL, 'simpala@2023';
  EXEC sp_executesql @SQL
  PRINT @SQL
	
FETCH NEXT FROM Grant_Permission INTO @DatabaseName  
END  
CLOSE Grant_Permission  
DEALLOCATE Grant_Permission
