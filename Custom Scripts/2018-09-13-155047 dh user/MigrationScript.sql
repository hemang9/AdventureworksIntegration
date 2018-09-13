/*
This migration script replaces uncommitted changes made to these objects:
Address

Use this script to make necessary schema and data changes for these objects only. Schema changes to any other objects won't be deployed.

Schema changes and migration scripts are deployed in the order they're committed.

Migration scripts must not reference static data. When you deploy migration scripts alongside static data 
changes, the migration scripts will run first. This can cause the deployment to fail. 
Read more at https://documentation.red-gate.com/display/SOC6/Static+data+and+migrations.
*/

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[NEWCOLUMN1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
GO
PRINT N'Refreshing [Sales].[vStoreWithAddresses]'
GO
EXEC sp_refreshview N'[Sales].[vStoreWithAddresses]'
GO
PRINT N'Refreshing [Purchasing].[vVendorWithAddresses]'
GO
EXEC sp_refreshview N'[Purchasing].[vVendorWithAddresses]'
GO
PRINT N'Refreshing [HumanResources].[vEmployee]'
GO
EXEC sp_refreshview N'[HumanResources].[vEmployee]'
GO
PRINT N'Refreshing [Sales].[vIndividualCustomer]'
GO
EXEC sp_refreshview N'[Sales].[vIndividualCustomer]'
GO
PRINT N'Refreshing [Sales].[vSalesPerson]'
GO
EXEC sp_refreshview N'[Sales].[vSalesPerson]'
GO
PRINT N'Refreshing [Sales].[vSalesPersonSalesByFiscalYears]'
GO
EXEC sp_refreshview N'[Sales].[vSalesPersonSalesByFiscalYears]'
GO
PRINT N'Re-enabling DDL triggers'
GO

