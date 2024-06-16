USE [master]
GO

-- check log file size
SELECT database_id,file_guid,type_desc,name,physical_name,size FROM sys.master_files
WHERE type_desc = 'LOG'

-- shrink batch
USE [batch]
GO
ALTER DATABASE batch
SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE(AdventureWorksDW2022_log,1)
GO 
ALTER DATABASE batch
SET RECOVERY FULL

-- shrink import
USE [import]
GO
ALTER DATABASE import
SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE(WWI_Log,1)
GO 
ALTER DATABASE import
SET RECOVERY FULL

-- shrink neptune
USE [neptune]
GO
ALTER DATABASE neptune
SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE(neptune_log,1)
GO 
ALTER DATABASE neptune
SET RECOVERY FULL

-- shrink stack
USE [stack]
GO
ALTER DATABASE stack
SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE(StackOverflow2010_log,1)
GO 
ALTER DATABASE stack
SET RECOVERY FULL

-- shrink student

USE [student]
GO
ALTER DATABASE student
SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE(StudentDatabase_log,1)
GO 
ALTER DATABASE student
SET RECOVERY FULL

-- check log file size
SELECT database_id,file_guid,type_desc,name,physical_name,size FROM sys.master_files
WHERE type_desc = 'LOG'
