﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
--Variable declarations
DECLARE @Client_GcWebsite_Key AS UNIQUEIDENTIFIER = '6e764b69-483f-4fa5-a531-a94f15dcf426'

DECLARE @ClientScope_GoClimbWebsite_GoClimbApiManage AS UNIQUEIDENTIFIER = 'b0878793-867b-423d-903e-2dbb8b077ed3'

DECLARE @Resource_Profile_Key AS UNIQUEIDENTIFIER = '8716864d-2000-4569-bf98-3d64f033d3ab'
DECLARE @Resource_Email_Key   AS UNIQUEIDENTIFIER = '1b9e68c5-92d5-4561-8848-1d407a7ec6ae'
DECLARE @Resource_OpenId_Key  AS UNIQUEIDENTIFIER = '94d1ad94-a8fa-46ca-aa1e-92c9eb2f30fc'
DECLARE @Resource_Address_Key AS UNIQUEIDENTIFIER = '60d2adf9-0ba2-48b8-a932-85a8161c379b'
DECLARE @Resource_Phone_Key   AS UNIQUEIDENTIFIER = 'a39fb52f-9a19-4855-96cc-08a2b0d24089'
DECLARE @Resource_GoClimbApi_Key   AS UNIQUEIDENTIFIER = '1cac0e20-b9c7-45f6-9e19-c20274a8d37e'

DECLARE @Scope_GoClimbApi_Manage AS UNIQUEIDENTIFIER = 'ba2bc283-8a85-49eb-93da-7d9fd2c67432'

--Post Deployment data scripts
:r ..\Data\Data_Client.sql
:r ..\Data\Data_Resource.sql
:r ..\Data\Data_Scope.sql
:r ..\Data\Data_ClientScope.sql
