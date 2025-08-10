-- THIS SCRIPTS CREATES NEW DATABASE CALLED DataWarehouse after checking if it already exists

-- Drop the database if it already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;

-- create database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;


-- create schemas 
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;

SHOW DATABASES;

