BACKUP DATABASE AUDITORIA
TO DISK = N'D:\SQL SERVER 2014\MSSQL12.SQLEXPRESS\MSSQL\Backup\MTA_BACKUP_TSQL.bak'
WITH
FORMAT,
INIT, -- substitui se existir um backup existente;
NAME = N'BACKUP FULL COM T-SQL',1
SKIP,
NOREWIND,
NOUNLOAD,
COMPRESSION,
STATS = 10, --utilizado para medir progresso do backup;
CHECKSUM,
GO
