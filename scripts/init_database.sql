/*
=======================================================================================================
Create Database and Schemas
=======================================================================================================

  Script Purpose:
          This script creates a new database named 'DataWarehouse' after checking if it already exists.
          If the database exists, it is dropped and recreated.Additionally,the script setss up three schemas
          within the database: 'bronze','silver','gold'.
  */


USE master;
GO

IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO 


--Create Database 'DataWarehouse'

USE master;

CREATE DATABASE DataWarehouse;

USE DataWarehouse; 
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold ;
