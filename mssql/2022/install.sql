USE [master]
GO

RESTORE DATABASE [AdventureWorksLT] 
    FROM DISK = '/adventureworkslt.bak'
        WITH MOVE 'AdventureWorksLT2022_Data' TO '/var/opt/mssql/data/AdventureWorksLT_Data.mdf',
        MOVE 'AdventureWorksLT2022_log' TO '/var/opt/mssql/data/AdventureWorksLT_Log.ldf'
GO