/*
=========================================
Create Database and Schemas
=========================================
Script purpose:
	The script creates a new database named 'DataWarehouse' after cheking if it alredy exists.
	If database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will permanently deleted. Proceed with caution 
	and ensure you have proper backups before running this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehaouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
