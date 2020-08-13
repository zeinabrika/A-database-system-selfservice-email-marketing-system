-----------------------------------------------------------------------------------------------------------------------------------------
--object: database for email marketing InsightMAIL
-----------------------------------------------------------------------------------------------------------------------------------------

USE master
GO

CREATE DATABASE InsightEMmarketing;

----------------------------------------------------------------------------------------------------------------------------------------
--Object: Schema InsightEM
----------------------------------------------------------------------------------------------------------------------------------------
USE [InsightEMmarketing];
GO
CREATE SCHEMA InsightEM;
GO

-----------------------------------------------------------------------------------------------------------------------------------------
--Object: table InsightEM.Campagin
-----------------------------------------------------------------------------------------------------------------------------------------
USE [InsightEMmarketing];
GO



CREATE TABLE [InsightEM].[Campaign]([CampaignId] INT IDENTITY NOT NULL PRIMARY KEY,
                                 [AccountId] INT NOT NULL,
                                 [CampaignName] VARCHAR(50) NOT NULL,
                                 [FromEmail] NVARCHAR(50) NOT NULL,
                                 [FromName] NVARCHAR(50) NOT NULL,
								 [TestEmail] INT NULL,
								 [Number_Contact] INT NOT NULL,
                                 [CreateDate] DATETIME NULL  DEFAULT (getdate()),
                                 [ModifiedDate] DATETIME  NULL DEFAULT (getdate()),
                                 [TemplateId] INT NOT NULL,
                                 [UserId] INT NOT NULL
                                 );

delete  from[InsightEM].[Campaign]
--------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in Campaign table
--------------------------------------------------------------------------------------------------------------------------------------

insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (1, 'Fisher, Dach and Ratke', 'bdurbin0@hhs.gov', 'Benjamin Durbin', 1, 331, '5/14/2018', '4/10/2018', 1, 5);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (2, 'Auer-Volkman', 'aleban1@freewebs.com', 'Ari Leban', 0, 450, '9/29/2017', '1/30/2018', 2, 6);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (3, 'Crist, Prohaska and Crist', 'itesche2@unesco.org', 'Inez Tesche', 0, 366, '11/3/2017', '9/16/2017', 3, 7);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (4, 'Mueller, Wisoky and Tillman', 'djessup3@barnesandnoble.com', 'Dev Jessup', 1, 327, '7/26/2017', '5/24/2017', 4, 8);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (5, 'Botsford Group', 'kconnolly4@goo.gl', 'Kimble Connolly', 0, 111, '6/15/2017', '3/8/2018', 5, 9);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (6, 'VonRueden-Beer', 'mgarvey5@feedburner.com', 'Maxy Garvey', 1, 466, '4/11/2018', '1/19/2018', 6,10);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (7, 'Spinka and Sons', 'sengeham6@123-reg.co.uk', 'Stanislaus Engeham', 1, 88, '9/7/2017', '9/20/2017', 7, 11);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (8, 'Bailey Inc', 'gwoodruffe7@blinklist.com', 'Gianna Woodruffe', 0, 332, '11/4/2017', '7/28/2017', 8, 12);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (9, 'Moore and Sons', 'svieyra8@booking.com', 'Sandy Vieyra', 1, 121, '9/29/2017', '8/10/2017', 9, 13);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (10, 'Gibson, Muller and Rogahn', 'rmeyer9@illinois.edu', 'Rolfe Meyer', 1, 160, '12/4/2017', '6/14/2017', 10, 14);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (11, 'Yost-Weber', 'misacoffa@imdb.com', 'Matthaeus Isacoff', 1, 417, '9/4/2017', '7/4/2017', 11, 15);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (12, 'Feest LLC', 'mcorteseb@forbes.com', 'Malanie Cortese', 0, 259, '6/17/2017', '2/24/2018', 12, 16);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (13, 'Wisoky Group', 'nwayc@sun.com', 'Nigel Way', 0, 321, '12/11/2017', '2/1/2018', 13, 17);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (14, 'Bogisich, Feeney and Lockman', 'mfelsteadd@artisteer.com', 'Monty Felstead', 0, 167, '3/29/2018', '8/4/2017', 14, 18);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (15, 'Wehner-Beatty', 'gsellmane@weebly.com', 'Giuditta Sellman', 1, 335, '6/3/2017', '6/26/2017', 15, 19);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (16, 'Bashirian, Pfannerstill and Predovic', 'egalliennef@ehow.com', 'Elvira Gallienne', 1, 140, '5/7/2018', '3/25/2018', 16, 20);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (17, 'Mayert, Strosin and Pfeffer', 'shawleyg@answers.com', 'Sumner Hawley', 0, 324, '10/4/2017', '8/10/2017', 17, 21);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (18, 'Marvin-Leuschke', 'adurganh@macromedia.com', 'Ashlee Durgan', 0, 91, '9/29/2017', '4/20/2018', 18, 22);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (19, 'Bashirian and Sons', 'randreseni@pen.io', 'Rice Andresen', 1, 323, '1/3/2018', '4/28/2018', 19, 23);
insert into InsightEM.Campaign (AccountId, CampaignName, FromEmail, FromName, TestEmail, Number_Contact, CreateDate, ModifiedDate, TemplateId, UserId) values (20, 'Funk and Sons', 'rmathisj@istockphoto.com', 'Reed Mathis', 0, 120, '4/25/2018', '7/21/2017', 20, 24);


  SELECT*FROM [InsightEM].[Campaign]
----------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Campaign] and add foreign key refer to table [InsightEM].[Account]
-------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Campaign]
ADD CONSTRAINT FK_Account FOREIGN KEY (AccountId)
REFERENCES [InsightEM].[Account](AccountId);

----------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Campaign] and add foreign key refer to table InsightEM.Users
-------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Campaign]
ADD CONSTRAINT FK_UserId FOREIGN KEY ([UserId])
REFERENCES [InsightEM].[Users](UserId)
ON DELETE CASCADE; 

-------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Campaign] and add foreign key refer to table InsightEM.Templates
-------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE  [InsightEM].[Campaign]
ADD CONSTRAINT FK_TemplateId FOREIGN KEY ([TemplateId])                  
REFERENCES [InsightEM].[Templates](TemplateId)
ON DELETE CASCADE; 

----------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into Campaign table
----------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Campaign_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Campaign_Insert
GO

CREATE PROCEDURE InsightEM.Campaign_Insert    
          
       @AccountId                      INT              ,
       @CampaignName                   NVARCHAR(50)     = NULL, 
       @FromEmail                      NVARCHAR(50)     = NULL,
	   @FromName                       NVARCHAR(50)     = NULL,
	   @Number_Contact                 INT              ,
	   @TestEmail                      INT              ,
	   @TemplateId                     INT              , 
	   @UserId                         INT              ,
	   @responseMessage                NVARCHAR(250) OUTPUT
AS 
BEGIN 
     SET NOCOUNT ON 
	  
	   
    BEGIN TRY
	
        INSERT INTO [InsightEM].[Campaign]
		([AccountId], [CampaignName], [FromEmail], [FromName],[TestEmail], [Number_Contact], [TemplateId], [UserId])

         VALUES (@AccountId, @CampaignName, @FromName,  @FromEmail,  @TestEmail, @Number_Contact, @TemplateId, @UserId)
		       
         SET @responseMessage='Successful'
		
    END TRY
    BEGIN CATCH
	    
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO
-----------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for EDITING data into Campagin table
-----------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Campagin_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Campagin_Update
GO

CREATE PROCEDURE InsightEM.Campagin_Update 

       @CampaginId                     INT,
	   @CampaignName                   NVARCHAR(50)     = NULL, 
       @FromEmail                      NVARCHAR(50)     = NULL, 
       @FromName                       NVARCHAR(50)     = NULL,
	   @Number_Contact                 INT              ,
	   @TestEmail                      INT              = NULL,
	   @responseMessage                NVARCHAR(250) OUTPUT

AS
BEGIN 
      SET NOCOUNT ON 
	   BEGIN TRY
	   BEGIN TRANSACTION 
      UPDATE [InsightEM].[Campaign]
       SET
        
			  CampaignName   = ISNULL(@CampaignName , CampaignName),
			  FromEmail  = ISNULL(@FromEmail , FromEmail),
			  FromName = ISNULL(@FromName, FromName),
              Number_Contact = ISNULL (@Number_Contact, Number_Contact), 
		      TestEmail  = ISNULL (@TestEmail,@TestEmail)


      FROM  [InsightEM].[Campaign]
      WHERE  
             [CampaignId]= @CampaginId   
			 
	
         SET @responseMessage='Successful'
		 COMMIT TRANSACTION 
    END TRY
    BEGIN CATCH
	    ROLLBACK TRANSACTION
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO
		             
-----------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into Campagin table
----------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Account_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.Campagin_Deleting
GO

CREATE PROCEDURE InsightEM.Campagin_Deleting
         @CampaginId INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	  BEGIN TRY
	 
     DELETE [InsightEM].[Campaign]
     FROM   [InsightEM].[Campaign]
     WHERE  
     [CampaignId] =  @CampaginId

	     
		 
    END TRY
    BEGIN CATCH
	   
        
    END CATCH
END 


GO

------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for SEARCH data into Campagin table
------------------------------------------------------------------------------------------------------------------------------------

 IF ( OBJECT_ID('InsightEM.Campagin_search') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Campagin_search
GO

CREATE PROCEDURE InsightEM.Campagin_search

       @CampaginId  INT        
AS
BEGIN 
     SET NOCOUNT ON 

     SELECT 
            CampaignName                   ,
            FromEmail                      ,
            FromName                       ,
			ModifiedDate                   ,
			CreateDate                   
			  
     FROM    [InsightEM].[Campaign](NOLOCK) 
     WHERE  
         [CampaignId]  =  @CampaginId

END 

GO

--------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for Column CompaignName for Campaign table
--------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_CompaignName] ON [InsightEM].[Campaign]
(
	[CampaignName] ASC
)
INCLUDE ([CampaignId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

-----------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for Column FromEmail for Campaign table
--------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE NONCLUSTERED INDEX [IDX_FromEmail] ON [InsightEM].[Campaign]
(
	[FromEmail] ASC
)
INCLUDE ( 	[CampaignId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

----------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for Column FromName for Campaign table
-----------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_FromName] ON [InsightEM].[Campaign]
(
	[FromName] ASC
)
INCLUDE ( 	[CampaignId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


----------------------------------------------------------------------------------------------------------------------------------------
--Object: Stored Procedures for test email in Campaign table (IF test_email receive 1 is successful, if 0 not successful)
----------------------------------------------------------------------------------------------------------------------------------------

 IF ( OBJECT_ID('InsightEM.test_email') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.test_email
GO
CREATE PROCEDURE InsightEM.test_email
      @CampaignId   INT

AS
BEGIN
      SET NOCOUNT ON;
 
      DECLARE @test_email INT
 
      IF EXISTS(SELECT CampaignId 
                        FROM [InsightEM].[Campaign]
                        WHERE CampaignId  = @CampaignId)
      BEGIN
            SET @test_email = 1      --test_email work successfully
      END
      ELSE
      BEGIN
            SET @test_email = 0      -- test_email work is not successful
      END
 
      RETURN @test_email
END

--------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.CampaignTracking
--------------------------------------------------------------------------------------------------------------------------

CREATE TABLE InsightEM.CampaignTracking  ([CampaignTrackingId] INT IDENTITY NOT NULL PRIMARY KEY,
                                          [Recipients] INT  NULL,
                                          [Opened] INT  NULL,
										  [Uopened] INT  NULL,
                                          [Clicked] INT  NULL,
                                          [UnSubscribed] INT  NULL,
                                          [MarkedSpam] INT  NULL,
                                          [Forwards] INT  NULL,
                                          [Bounced] INT  NULL,
										  [longitude] FLOAT  NULL,
										  [latitude] FLOAT  NULL,
										  [CampaignId]  INT NOT NULL,
										  [SubscriberId] INT NOT NULL,
                                          );

delete from[InsightEM].[CampaignTracking]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in CampaignTracking table
--------------------------------------------------------------------------------------------------------------------------
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened, Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 176, 38, 105, 105,49, 37, 271, 68, -42.5117238, -19.3882364,83, 1);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 190, 90, 105, 105,101, 67, 83, 38, 12.8179315, 56.029768, 84, 2);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 135, 6, 172, 105,93, 35, 252, 9, -40.2897153, -20.3321939, 85, 3);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 158, 13, 94, 94,69, 76, 130, 59, -59.4706823, 13.1089876, 86, 4);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 113, 18, 151, 94,169, 62, 193, 48, 120.582633, 29.988244, 87, 5);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 41, 39, 73, 73,148, 55, 124, 8, 47.0802023, 14.3545083,88, 6);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 92, 94, 144, 73,122, 47, 123, 56, -65.7655162, -28.4425713, 89, 7);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 27, 99, 279, 73,109, 96, 67, 50, -8.4715169, 39.4551146, 90, 8);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 155, 89, 149,73, 199, 100, 74, 80, 74.8362662, 61.1331274, 91, 11);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 106, 33, 294, 58, 89, 102, 102,18, 25.9222439, 58.002775, 92, 12);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 186, 70, 110, 82, 65, 87, 58,206, 123.933309, 10.334895, 93, 14);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 180, 12, 156, 185, 48, 146,206, 29, -16.765857, 32.715164, 94, 16);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 69, 94, 44, 175, 69, 75, 10,206, 28.116926, 36.2145292, 95, 17);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 180, 18, 188, 184, 73, 201, 93,206, 113.6656069, 34.748808, 96, 19);
insert into InsightEM.CampaignTracking ( Recipients, Opened, Uopened,Clicked, UnSubscribed, MarkedSpam, Forwards, Bounced, longitude, latitude, CampaignId, SubscriberId) values ( 175, 26, 265, 198, 50, 206, 206,29, -71.6777177, -13.674114,97, 20);

-------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[CampaignTracking] and add foreign key refer to [InsightEM].[Campaign]
-------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE  InsightEM.CampaignTracking    
ADD CONSTRAINT FK_CampaignId FOREIGN KEY (CampaignId)                     
REFERENCES [InsightEM].[Campaign] (CampaignId)
ON DELETE CASCADE; 

==============================================================================================================================
--Alter table [InsightEM].[CampaignTracking] and add foreign key refer to [InsightEM].[Subscribers]
-------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE  [InsightEM].[CampaignTracking]  
ADD CONSTRAINT FK_SubscriberId FOREIGN KEY (SubscriberId)      
REFERENCES [InsightEM].[Subscribers] (SubscriberId) 
ON DELETE CASCADE; 

--------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.ScheduledMailing
--------------------------------------------------------------------------------------------------------------------------

CREATE TABLE InsightEM.ScheduledMailing ([ScheduledId] INT IDENTITY NOT NULL PRIMARY KEY,
                                         [Title] VARCHAR(50) NULL,
										 [ScheduledType] VARCHAR (20) NULL,
                                         [StartDate] DATETIME  NULL  DEFAULT (getdate()),
                                         [RecurrencePattern] VARCHAR (20) NULL,
										 [TimeDay] TIME NULL,
                                         [EndDate] DATETIME  NULL  DEFAULT (getdate()), 
										 [CampaignId] INT NOT NULL,
                                         );

delete from [InsightEM].[ScheduledMailing]
-------------------------------------------------------------------------------------------------------------------------------
--Inserting values in ScheduledMailing table
--------------------------------------------------------------------------------------------------------------------------------

insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Dahle', 'now', '7/11/2017', 'daily', '9:21:07', '7/31/2017', 83);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Atwood', 'later', '10/12/2017', 'weekly', '1:48:17', '4/27/2018', 84);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Kings', 'now', '4/13/2018', 'monthly', '8:40:05', '9/14/2017', 85);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Aberg', 'later', '8/1/2017', 'monthly', '16:15:34', '11/5/2017', 86);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Atwood', 'later', '11/4/2017', 'daily', '12:59:02', '12/24/2017', 87);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Carpenter', 'later', '2/7/2018', 'daily', '12:16:59', '8/4/2017', 88);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Beilfuss', 'now', '2/22/2018', 'weekly', '5:57:29', '2/4/2018', 89);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Prairieview', 'now', '1/21/2018', 'weekly', '2:57:51', '10/8/2017', 90);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Hauk', 'now', '6/6/2017', 'daily', '2:21:40', '3/12/2018', 91);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Carberry', 'later', '9/25/2017', 'monthly', '9:27:28', '4/11/2018', 92);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Packers', 'later', '7/21/2017', 'monthly', '0:53:30', '11/11/2017', 93);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Kipling', 'later', '9/11/2017', 'monthly', '12:51:59', '2/19/2018', 94);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Drewry', 'now', '8/12/2017', 'daily', '21:45:39', '9/17/2017', 95);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Corben', 'now', '10/26/2017', 'daily', '15:47:09', '11/23/2017', 96);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Bunting', 'later', '1/10/2018', 'weekly', '13:34:18', '3/4/2018', 97);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Helena', 'now', '3/15/2018', 'daily', '17:29:29', '11/16/2017', 98);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Luster', 'later', '7/21/2017', 'monthly', '18:52:32', '10/12/2017', 99);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Melvin', 'now', '7/22/2017', 'monthly', '2:14:23', '5/4/2018', 100);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Sloan', 'later', '7/31/2017', 'daily', '8:29:52', '8/14/2017', 101);
insert into [InsightEM].[ScheduledMailing] (Title, ScheduledType, StartDate, RecurrencePattern, TimeDay, EndDate, CampaignId) values ('Hansons', 'later', '8/31/2017', 'yearly', '0:50:17', '2/26/2018', 102);

-------------------------------------------------------------------------------------------------------------------------------
--Alter table InsightEM.ScheduledMailing and add foreign key refer to [InsightEM].[Campaign]
-------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE   [InsightEM].[ScheduledMailing]
ADD FOREIGN KEY (CampaignId)              
REFERENCES [InsightEM].[Campaign] (CampaignId) 
ON DELETE CASCADE; 

--------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Templates
--------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Templates] ([TemplateId] INT IDENTITY NOT NULL PRIMARY KEY,
                                  [Template_Name] VARCHAR(100) NOT NULL,
                                  [CreateDate] DATETIME  NULL  DEFAULT (getdate()), 
                                  [Modified_Date] DATETIME  NULL  DEFAULT (getdate()), 
								  [Color] VARCHAR(20) NULL, 
								  [Type_Template] VARCHAR(20) NULL,
                                  );

--------------------------------------------------------------------------------------------------------------------------------
--Inserting values in  Templates table
--------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Smooth Rose', '9/4/2017', '1/16/2018', 'Blue', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Fancy Nightshade', '10/7/2017', '4/16/2018', 'Puce', 'mobile');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Alpine Golden Buckwheat', '8/4/2017', '3/26/2018', 'Violet', 'both');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Cycloloma', '3/8/2018', '12/4/2017', 'Mauv', 'mobile');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Small Twistedstalk', '3/15/2018', '5/29/2017', 'Green', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Arctic Rush', '10/21/2017', '7/29/2017', 'Crimson', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Tagasaste', '11/6/2017', '6/9/2017', 'Mauv', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Boykin''s Clusterpea', '7/28/2017', '10/29/2017', 'Yellow', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Tomato Fern', '8/8/2017', '1/12/2018', 'Blue', 'mobile');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Heartleaf Saxifrage', '6/30/2017', '8/29/2017', 'Orange', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Bartramia Moss', '6/18/2017', '12/29/2017', 'Purple', 'both');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Gate Canyon Buckwheat', '4/14/2018', '5/31/2017', 'Pink', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Brosimum', '2/20/2018', '5/4/2018', 'Khaki', 'both');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Devil''s Beggartick', '12/28/2017', '1/14/2018', 'Red', 'both');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Depressed Clearweed', '5/23/2017', '7/1/2017', 'Orange', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Eckfeldt''s Lecidea Lichen', '3/6/2018', '5/4/2018', 'Red', 'mobile');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Darkthroat Shootingstar', '6/11/2017', '1/13/2018', 'Crimson', 'mobile');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Blue-eyed Grass', '5/16/2017', '12/23/2017', 'Green', 'desktop');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('Aster', '3/18/2018', '3/10/2018', 'Yellow', 'both');
insert into [InsightEM].[Templates] (Template_Name, CreateDate, Modified_Date, Color, Type_Template) values ('German Iris', '12/29/2017', '7/6/2017', 'Aquamarine', 'both');

---------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into Templates table
---------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Templates_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Templates_Insert
GO

CREATE PROCEDURE InsightEM.Templates_Insert    
     
       @Template_name                  NVARCHAR(100)    = NULL, 
	   @Color                          VARCHAR (20)     = NULL,
	   @Type_Template                  VARCHAR (20)     = NULL,
	   @responseMessage                NVARCHAR(250)    OUTPUT

AS 
BEGIN 
     SET NOCOUNT ON 

    BEGIN TRY
	  
        INSERT INTO [InsightEM].[Templates]
		([Template_name],  [Color], [Type_Template])

        VALUES(@Template_name,  @Color, @Type_Template)  
		       
         SET @responseMessage='Successful'
		 
    END TRY
    BEGIN CATCH
	    
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for EDITING data into Templates table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Templates_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Templates_Update
GO

CREATE PROCEDURE InsightEM.Templates_Update 


       @TemplateId                     INT,
       @Template_name                  NVARCHAR(100)    = NULL, 
	   @Color                          VARCHAR (20)     = NULL,
	   @Type_Template                  VARCHAR(20)      = NULL,           
	   @responseMessage                NVARCHAR(250) OUTPUT
 
AS
BEGIN 
      SET NOCOUNT ON 
	   BEGIN TRY
	   BEGIN TRANSACTION
      UPDATE [InsightEM].[Templates]
      SET 
             
			  Template_name   = ISNULL(@Template_name, Template_name),
              Color           = ISNULL(@Color, Color),
              Type_Template   = ISNULL(@Type_Template, Type_Template)
			
			
      FROM  [InsightEM].[Templates]
      WHERE  
             TemplateId = @TemplateId                 

         SET @responseMessage='Successful'
		 COMMIT TRANSACTION 
    END TRY
    BEGIN CATCH
	    ROLLBACK TRANSACTION
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO
	
-------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into Templates table
-------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Templates_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.Templates_Deleting
GO

CREATE PROCEDURE InsightEM.Templates_Deleting
          @TemplateId INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY

     DELETE [InsightEM].[Templates]
     FROM   [InsightEM].[Templates]
     WHERE  
     TemplateId  =  @TemplateId

    END TRY
    BEGIN CATCH
	        
    END CATCH
END 

GO
----------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.TemplateElements
----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[TemplateElement] ([TemplateElementId] INT IDENTITY NOT NULL PRIMARY KEY,
                                         [Name] VARCHAR(50) NULL,
                                         [Description] VARCHAR(200) NULL,
                                         [ElementType] VARCHAR(20) NOT NULL,
                                         [TemplateId] INT NOT NULL, 
										 [ElementCode] NVARCHAR (MAX) NULL,                                  
                                          );

-----------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[TemplateElement] table
-----------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Subin', 'Evie', 1, 'src="hools.jpg" alt="W3Schools.com" width="104" height="142"');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Ventosanzap', 'Beatriz', 2, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank"');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Stim', 'Kirbee', 3, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Prodder', 'Bernardina', 4, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Tin', 'Sadye', 5, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Sub-Ex', 'Cassius', 6, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Bigtax', 'Kathleen', 7, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Flowdesk', 'Fredi', 8, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Stronghold', 'Lulita', 9, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Viva', 'Bobine', 10, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Hatity', 'Ashlan', 11, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Biodex', 'Rolph', 12, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Gembucket', 'Donia', 13, 'href="http://www.travel-explorer.com/australia-best-beaches/" target="_blank');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Zontrax', 'Woodie', 14, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Fix San', 'Marcello', 15, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Home Ing', 'Fletch', 16, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Vagram', 'Zea', 17, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Bitwolf', 'Giacinta', 18, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Sub-Ex', 'Harbert', 19, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
insert into [InsightEM].[TemplateElement] (Name, ElementType, TemplateId, ElementCode) values ('Sonsing', 'Putnam', 20, 'src="/pix/byron_bay_225x169.jpg" style="border:none;m');
  
----------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[TemplateElement] and add foreign keys refer to table [InsightEM].[Template]
----------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE  [InsightEM].[TemplateElement]
ADD FOREIGN KEY (TemplateId)                  
REFERENCES [InsightEM].[Templates](TemplateId)
ON DELETE CASCADE; 

---------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into [InsightEM].[TemplateElement] table
---------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.TemplateElement_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.TemplateElement_Insert
GO

CREATE PROCEDURE InsightEM.TemplateElement_Insert    
     
       @Name                           NVARCHAR(50)    = NULL, 
	   @Description                    VARCHAR (200)   = NULL,
	   @ElementType                    VARCHAR (20)    = NULL,
       @ElementCode                    NVARCHAR(MAX)   = NULL,
	   @responseMessage                NVARCHAR(250)    OUTPUT

AS 
BEGIN 
     SET NOCOUNT ON 

    BEGIN TRY
	
        INSERT INTO [InsightEM].[TemplateElement]
		([Name], [Description], [ElementType],[ElementCode])

        VALUES(@Name, @Description, @ElementType, @ElementCode)  
		       
         SET @responseMessage='Successful'

    END TRY
    BEGIN CATCH

        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for Editing data into [InsightEM].[TemplateElement] table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.TemplateElement_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.TemplateElement_Update
GO

CREATE PROCEDURE InsightEM.TemplateElement_Update 

       @TemplateElementId              INT,
       @Name                           NVARCHAR(50)    = NULL, 
	   @Description                    VARCHAR (200)   = NULL,
	   @ElementType                    VARCHAR (20)    = NULL,
       @ElementCode                    NVARCHAR(MAX)   = NULL,
	   @responseMessage                NVARCHAR(250)    OUTPUT
 
AS
BEGIN 
      SET NOCOUNT ON 
	   BEGIN TRY
	  
      UPDATE [InsightEM].[TemplateElement]
      SET 
             
			  Name           = ISNULL (@Name , Name),
              [Description]  = ISNULL (@Description , [Description]),
              ElementType    = ISNULL (@ElementType,  ElementType),
			  ElementCode   = ISNULL  (@ElementCode, ElementCode)
			
      FROM   [InsightEM].[TemplateElement]
      WHERE 
             TemplateElementId = @TemplateElementId               

         SET @responseMessage='Successful'
		
    END TRY
    BEGIN CATCH
	 
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO
	
-------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into [InsightEM].[TemplateElement] table
-------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.TemplateElement_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.TemplateElement_Deleting
GO

CREATE PROCEDURE InsightEM.TemplateElement_Deleting
          @TemplateElementId INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY

     DELETE [InsightEM].[TemplateElement]
     FROM   [InsightEM].[TemplateElement]
     WHERE  
     TemplateElementId  =  @TemplateElementId 

    END TRY
    BEGIN CATCH
	        
    END CATCH
END 

GO
-----------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Account
-- There is a field that have code 0 and 1 for Activation and Deactivate userrespectively   
-----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Account] ([AccountId] INT IDENTITY NOT NULL PRIMARY KEY,
                                [FirstName] NVARCHAR(50) NOT NULL,
                                [LastName] NVARCHAR(50) NOT NULL,
								[UserName] NVARCHAR(50) NOT NULL,
								[Password] NVARCHAR(20) NOT NULL,
                                [CompanyName] NVARCHAR(128)  NULL,
                                [CompanySize] NVARCHAR(20) NULL,
                                [EmailAddress] NVARCHAR(50) NOT NULL,
                                [WebSiteURL] NVARCHAR(254) NULL,
                                [PhoneNumber] NVARCHAR(25)  NULL,
                                [AddressLine1] NVARCHAR(50)  NULL,
                                [AddressLine2] NVARCHAR(50) NULL,
                                [City] NVARCHAR(30)  NULL,
                                [Country] NVARCHAR(50)  NULL,
                                [PostCode] NVARCHAR(15)  NULL,
								[CreateDate] DATETIME NULL  DEFAULT (getdate()),
								[ModifiedDate] DATETIME NULL  DEFAULT (getdate()),
								[LastLogin] DATETIME NULL  DEFAULT (getdate()),
                                [Active_Code] INT NOT NULL,
                                );

DELETE FROM [InsightEM].[Account]
SELECT * FROM [InsightEM].[Account]
-----------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[Account] table
-----------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Åke', 'Matthis', 'ematthis0', 'hikFGtlWTh', 'Pouros LLC', 69, 'umatthis0@storify.com', 'https://epa.Iov/faucibuss', '255-137-4355', 'Lukken', '31', 'Xinji', 'China', null, '7/5/2017', '10/5/2017', '7/10/2017', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Loïc', 'Grainger', 'kgrainger1', 'WQ61WI', 'Crooks-Jacobi', 447, 'cgrainger1@illinois.edu', 'https://senate.Iov/molestie', '708-432-7010', 'Russell', '500', 'Sastöbe', 'Kazakhstan', null, '6/28/2017', '1/27/2018', '7/13/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Laurélie', 'Sinkinson', 'msinkinson2', 'bMvVQj1wOS0', 'Schamberger-Bernhard', 383, 'tsinkinson2@ftc.gov', 'http://sphinn.com', '760-548-9954', 'Arizona', '7', 'Hulitu', 'China', null, '6/18/2017', '9/10/2017', '6/1/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Léonie', 'Shearer', 'cshearer3', '6dXUhVU4G3u', 'Howe-Jacobs', 293, 'pshearer3@arstechnica.com', 'https://businessinsider.com/pede', '992-524-6528', 'Kinsman', '05', 'Heshan', 'China', null, '4/12/2018', '6/18/2017', '7/9/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Maïté', 'Lamberti', 'llamberti4', 'hRiZrGlU', 'Klein-Hodkiewicz', 162, 'olamberti4@com.com', 'https://si.edu/aliquam/lacus.aspx', '133-746-8672', 'Sloan', '21', 'Hualin', 'China', null, '3/24/2018', '7/28/2017', '9/30/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Maïlys', 'Pealing', 'apealing5', 'GygrCuZ3ec', 'Heidenreich, Ullrich and Watsica', 382, 'apealing5@cnet.com', 'http://usatoday.com', '445-184-5046', 'Schmedeman', '44', 'Quatá', 'Brazil', '19780-000', '2/14/2018', '5/23/2017', '4/30/2018', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Lorène', 'Pettecrew', 'spettecrew6', 'vIyThxK8CO', 'Veum-Abernathy', 83, 'dpettecrew6@yelp.com', 'https://yahoo.com/eget/orci.json?turp', '722-521-2618', 'Bay', '1', 'Rushanzhai', 'China', null, '9/28/2017', '4/27/2018', '8/18/2017', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Marie-josée', 'Sylvester', 'csylvester7', 'KYv3ZnPyZqi', 'Towne, Howell and Thompson', 249, 'vsylvester7@live.com', 'http://usda.Yov/pretic', '246-999-8355', 'Straubel', '7546', 'Osielec', 'Poland', '34-234', '9/9/2017', '1/21/2018', '8/9/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Örjan', 'Clapston', 'lclapston9', '5J3Dp9YfhAG', 'Champlin-Roberts', 441, 'lclapston9@blogtalkradio.com', 'https://arstechnica.com/', '535-106-8287', 'Waubesa', '79246', 'Tissa', 'Morocco', null, '1/10/2018', '1/19/2018', '7/14/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Zhì', 'Gaskins', 'rgaskinsa', 'iOUJZHmja', 'Herzog and Sons', 51, 'bgaskinsa@addthis.com', 'https://bing.com', '173-381-2691', 'Morningstar', '378', 'Seixo da Beira', 'Portugal', '3405-425', '1/20/2018', '2/6/2018', '2/17/2018', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Cinéma', 'Knapper', 'aknapperb', 'KgKXRuqTyrcs', 'Pouros-Douglas', 317, 'lknapperb@wufoo.com', 'http://wiley.com', '158-719-0181', 'Kropf', '3', 'Temandangjero', 'Indonesia', null, '1/24/2018', '9/15/2017', '1/11/2018', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Anaëlle', 'Suthren', 'tsuthrenc', 'wS4TToF', 'Wolff LLC', 207, 'gsuthrenc@1und1.de', 'http://ibm.com/in.json', '250-437-8881', 'Bunker Hill', '32007', 'Pedreira', 'Brazil', '13920-000', '7/11/2017', '5/31/2017', '12/11/2017', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Camélia', 'Cominetti', 'vcominettid', '8ywIPs', 'Zemlak, Zboncak and Hackett', 125, 'acominettid@over-blog.com', 'http://so-net.COM', '392-393-3452', 'Acker', '4005', 'Enskededalen', 'Sweden', '121 32', '8/2/2017', '10/18/2017', '6/2/2017', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Pélagie', 'Haburne', 'thaburnee', 'mttdYqdb7M', 'Connelly-Volkman', 128, 'ehaburnee@google.cn', 'https://fotki.com', '728-704-1901', 'Northwestern', '6', 'San Vicente', 'Philippines', '6419', '3/3/2018', '3/26/2018', '12/10/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Mélanie', 'Howlings', 'thowlingsf', 'A2RPXvJz2HR2', 'Emard-Bergnaum', 211, 'lhowlingsf@ucoz.com', 'https://livejournal.com', '259-748-5007', 'High Crossing', '48', 'Huallanca', 'Peru', null, '1/10/2018', '5/9/2018', '4/24/2018', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Estève', 'Nortcliffe', 'vnortcliffeg', 'FtUp8Dimj', 'Miller LLC', 40, 'anortcliffeg@360.cn', 'http://macdictumst.com', '138-815-6527', 'Paget', '6', 'Ilihan', 'Philippines', '1745', '6/20/2017', '3/1/2018', '3/3/2018', 1);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Gösta', 'Szepe', 'jszepeh', '9o6kksn', 'Hickle, Boehm and Ward', 447, 'mszepeh@illinois.edu', 'https://aboutads.info/sapien', '821-616-3313', 'Norway Maple', '123', 'Timur', 'Indonesia', null, '3/8/2018', '7/29/2017', '8/22/2017', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Clélia', 'Amoore', 'ramoorei', 'eG8etAiyx', 'Feil Group', 445, 'ramoorei@admin.ch', 'http://tedultricesaugue.com', '154-111-8686', 'Utah', '828', 'Sariwŏn', 'North Korea', null, '8/20/2017', '3/3/2018', '3/30/2018', 0);
insert into [InsightEM].[Account] (FirstName, LastName, UserName, Password, CompanyName, CompanySize, EmailAddress, WebSiteURL, PhoneNumber, AddressLine1, AddressLine2, City, Country, PostCode, CreateDate, ModifiedDate, LastLogin, Active_Code) values ('Uò', 'Goodlad', 'kgoodladj', '6VSfQUCKe4Z', 'Rolfson, Wilderman and Stroman', 410, 'kgoodladj@google.com.au', 'http://w3maecenas.org', '632-333-4527', 'Russell', '3', 'Jimusa’er', 'China', null, '12/15/2017', '4/14/2018', '2/4/2018', 0);


------------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for email address for Account table
------------------------------------------------------------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IDX_EmailAddress] ON [InsightEM].[Account]
(
	[EmailAddress] ASC
)
INCLUDE ([AccountId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
 SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

 -----------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for FirstName for Account table
-------------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_FirstName] ON [InsightEM].[Account]
(
	[FirstName] ASC
)
INCLUDE ( 	[AccountId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF,  ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO


------------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for LastName for Account table
------------------------------------------------------------------------------------------------------------------------------------
 CREATE NONCLUSTERED INDEX [IDX_LastName] ON [InsightEM].[Account]
(
	[LastName] ASC
)
INCLUDE ( 	[AccountId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for UserName for Account table
------------------------------------------------------------------------------------------------------------------------------------

	CREATE UNIQUE NONCLUSTERED INDEX [IDX_UserName] ON [InsightEM].[Account]
(
	[UserName] ASC
)
INCLUDE ([AccountId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO 
------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for Passwoord for Account table
------------------------------------------------------------------------------------------------------------------------------------

	CREATE UNIQUE NONCLUSTERED INDEX [IDX_Password] ON [InsightEM].[Account]
(
	[Password]ASC
)
INCLUDE ([AccountId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO 
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into account table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Account_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Account_Insert
GO

CREATE PROCEDURE InsightEM.Account_Insert         

	   @FirstName                      NVARCHAR(50)     = NULL,
       @lastname                       NVARCHAR(50)     = NULL, 
       @UserName                       NVARCHAR(50)     = NULL, 
       @Password                       NVARCHAR(50)     = NULL, 
       @CompanyName                    NVARCHAR(50)     = NULL,   
	   @CompanySize                    NVARCHAR(50)     = NULL,  
       @EmailAddress                   NVARCHAR(50)     = NULL,
       @WebSiteURL                     NVARCHAR(50)     = NULL,  
       @PhoneNumber                    NVARCHAR(50)     = NULL,  
       @AddressLine1                   NVARCHAR(50)     = NULL,  
       @AddressLine2                   NVARCHAR(50)     = NULL,  
	   @City                           NVARCHAR(30)     = NULL,  
	   @Country                        NVARCHAR(50)     = NULL,  
	   @PostCode                       NVARCHAR(15)     = NULL,  
	   @Active_Code                    INT              , 
	   @responseMessage                NVARCHAR(250) OUTPUT
AS 
BEGIN 
     SET NOCOUNT ON 

    BEGIN TRY
		
        INSERT INTO [InsightEM].[Account] 
		( [FirstName],[LastName], [UserName], [Password], [CompanyName], [CompanySize], [EmailAddress], 
		 [WebSiteURL], [PhoneNumber], [AddressLine1], [AddressLine2], [City], [Country], 
		 [PostCode], [Active_Code])

        VALUES( @FirstName,@lastname,@UserName,@Password, @CompanyName,@CompanySize, @EmailAddress, @WebSiteURL,
		 @PhoneNumber, @AddressLine1, @AddressLine2, @City, @Country,@PostCode, @Active_Code)
				       
         SET @responseMessage='Successful'
		 
    END TRY
    BEGIN CATCH
		
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO

-------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for EDITING data into account table
-------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Account_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Account_Update
GO

CREATE PROCEDURE InsightEM.Account_Update 
       @AccountId                      INT,
	   @FirstName                      NVARCHAR(50)     =NULL, 
       @Lastname                       NVARCHAR(50)     = NULL, 
       @UserName                       NVARCHAR(50)     = NULL, 
       @Password                       NVARCHAR(50)     = NULL, 
       @CompanyName                    NVARCHAR(50)     = NULL,   
	   @CompanySize                    NVARCHAR(50)     = NULL,  
       @EmailAddress                   NVARCHAR(50)     =NULL,  
       @WebSiteURL                     NVARCHAR(50)     = NULL,  
       @PhoneNumber                    NVARCHAR(50)     = NULL,  
       @AddressLine1                   NVARCHAR(50)     = NULL,  
       @AddressLine2                   NVARCHAR(50)     = NULL,  
	   @City                           NVARCHAR(30)     = NULL,  
	   @Country                        NVARCHAR(50)     = NULL,  
	   @PostCode                       NVARCHAR(15)     = NULL, 
	   @Active_Code                    INT,              
	   @responseMessage                NVARCHAR(250) OUTPUT

AS
BEGIN 
      SET NOCOUNT ON 
	    BEGIN TRY
		BEGIN TRANSACTION
      UPDATE [InsightEM].[Account]
      SET 
             
			  FirstName  = ISNULL(@FirstName, FirstName),
			  Lastname   = ISNULL(@Lastname, Lastname),
			  UserName   = ISNULL(@UserName, UserName),
			  [Password] = ISNULL(@Password, [Password]),
			  CompanyName = ISNULL(@CompanyName, CompanyName), 
			  CompanySize = ISNULL(@CompanySize, CompanySize),  
			  EmailAddress = ISNULL (@EmailAddress, EmailAddress),  
			  WebSiteURL = ISNULL (@WebSiteURL, WebSiteURL),
			  PhoneNumber = ISNULL (@PhoneNumber, PhoneNumber),
			  AddressLine1 = ISNULL (@AddressLine1, AddressLine1),
			  AddressLine2 = ISNULL (@AddressLine2, AddressLine2), 
			  City =  ISNULL (@City, City), 
			  Country = ISNULL (@Country, Country),   
			  PostCode = ISNULL (@PostCode, PostCode),
              Active_Code  =  ISNULL (@Active_Code, Active_Code)


      FROM   [InsightEM].[Account]
      WHERE  
             [AccountId] = @AccountId     
			               
         SET @responseMessage='Successful'
		 COMMIT TRANSACTION 
    END TRY
    BEGIN CATCH
	    ROLLBACK TRANSACTION
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO

------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into account table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Account_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.Account_Deleting
GO

CREATE PROCEDURE InsightEM.Account_Deleting
         @AccountId   INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY
     DELETE [InsightEM].[Account]
     FROM   [InsightEM].[Account]
     WHERE  
     AccountId = @AccountId

    END TRY
    BEGIN CATCH
	        
    END CATCH
END 

GO

------------------------------------------------------------------------------------------------------------------------------
--Object: stored  procedure for activating and deactivating main user account
------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [InsightEM].[Active_Code] 

    @AccountId int,
    @flag int,
    @response int OUTPUT

AS
BEGIN
    SET NOCOUNT ON
DECLARE @Active_Code  int
    SET @Active_Code  = 0
     IF @flag = 1
BEGIN
    SET @Active_Code  = 1

END

    BEGIN TRY

        UPDATE [InsightEM].[Account] 
		SET Active_Code = @Active_Code
		WHERE 
		AccountId = @AccountId

        SET @response=1

    END TRY
    BEGIN CATCH
        SET @response=-1 
    END CATCH
END

GO

-----------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Subscribers 
-----------------------------------------------------------------------------------------------------------------------------

 CREATE TABLE [InsightEM].[Subscribers] ([SubscriberId] INT IDENTITY NOT NULL PRIMARY KEY,
                                     [FirstName] NVARCHAR(50) NULL,
                                     [LastName] NVARCHAR(50) NULL,
                                     [EmailAddress] NVARCHAR(50) NOT NULL,
									 [AccountId] INT NOT NULL,
									 [ListName] NVARCHAR(50) NULL,
                                     );

ALTER TABLE [InsightEM].[Subscribers]
ADD  ListName NVARCHAR(50);
------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[Subscribers] table
------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Amabel', 'Gilby', 'agilby0@google.cn', 1, 'Prodder');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Amber', 'Dawidowitz', 'adawidowitz1@alibaba.com', 2, 'Pannier');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Ginger', 'Baudain', 'gbaudain2@symantec.com', 3, 'Zamit');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Adrienne', 'Kiely', 'akiely3@biglobe.ne.jp', 4, 'Veribet');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Bobbe', 'Clouston', 'bclouston4@nature.com', 5, 'Voyatouch');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Ginnie', 'Marvin', 'gmarvin5@tmall.com', 6, 'Tampflex');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Jeremy', 'Gildersleeve', 'jgildersleeve6@narod.ru', 7, 'Opela');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Cedric', 'Eccersley', 'ceccersley7@lycos.com', 8, 'Alpha');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Emlynne', 'Wheatley', 'ewheatley8@upenn.edu', 9, 'Opela');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Bianca', 'Bunworth', 'bbunworth9@wunderground.com', 10, 'Lotstring');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Huntington', 'Lewinton', 'hlewintona@deviantart.com', 11, 'Cardguard');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Alisa', 'Gobeaux', 'agobeauxb@noaa.gov', 12, 'Bitchip');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Sanson', 'Dominey', 'sdomineyc@nature.com', 13, 'Temp');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Verena', 'Boniface', 'vbonifaced@angelfire.com', 14, 'Sonair');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Cleopatra', 'Boal', 'cboale@google.com.hk', 15, 'Bigtax');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Hilary', 'Arne', 'harnef@liveinternet.ru', 16, 'Mat Lam Tam');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Caryl', 'Adnett', 'cadnettg@live.com', 17, 'Latlux');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Evanne', 'Belsham', 'ebelshamh@google.es', 18, 'Veribet');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Foster', 'Natwick', 'fnatwicki@ezinearticles.com', 19, 'Treeflex');
insert into [InsightEM].[Subscribers] (FirstName, LastName, EmailAddress, AccountId, ListName) values ('Lamar', 'Addey', 'laddeyj@sbwire.com', 20, 'Sonair');

 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Alter table InsightEM.Subscribers and add foreign keys refer to table [InsightEM].[Account]
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Subscribers]
ADD FOREIGN KEY (AccountId)                  
REFERENCES [InsightEM].[Account](AccountId)
ON DELETE CASCADE; 

------------------------------------------------------------------------------------------------------------------------------
--Creating INDEX for email address for subscribers table
------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE NONCLUSTERED INDEX [IDX_EmailAddress] ON [InsightEM].[Subscribers]
(
	[EmailAddress] ASC
)
INCLUDE ([SubscriberId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

------------------------------------------------------------------------------------------------------------------------------
--Object:Creating INDEX for FristName for subscribers table
------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_FirstName] ON [InsightEM].[Subscribers]
(
	 [FirstName] ASC
)
INCLUDE ([SubscriberId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
------------------------------------------------------------------------------------------------------------------------------
--Object:Creating INDEX for LastName for subscribers table
------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_LastName] ON [InsightEM].[Subscribers]
(
	[LastName]  ASC
)
INCLUDE ([SubscriberId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into Subscribers table
------------------------------------------------------------------------------------------------------------------------------

 IF ( OBJECT_ID('InsightEM.Subscribers_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Subscribers_Insert
GO

CREATE PROCEDURE InsightEM.Subscribers_Insert         

	   @FirstName                      NVARCHAR(50)     = NULL, 
       @Lastname                       NVARCHAR(50)     = NULL, 
       @EmailAddress                   NVARCHAR(50)     = NULL,  
	   @AccountId                      INT             ,
	   @ListName                       NVARCHAR(50)     = NULL,
	   @responseMessage                NVARCHAR(250)    OUTPUT
AS 
BEGIN 
     SET NOCOUNT ON 

    BEGIN TRY
	
        INSERT INTO [InsightEM].[Subscribers]
		([FirstName], [LastName],  [EmailAddress], [AccountId])

        VALUES(@FirstName, @lastname, @EmailAddress,@AccountId)
		       
         SET @responseMessage='Successful'
		  
    END TRY
    BEGIN CATCH
	    
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 

GO
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for EDITING data into Subscribers table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Subscribers_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Subscribers_Update
GO

CREATE PROCEDURE InsightEM.Subscribers_Update 

       @SubscriberId                   INT,
	   @FirstName                      NVARCHAR(50)     = NULL, 
       @Lastname                       NVARCHAR(50)     = NULL, 
       @EmailAddress                   NVARCHAR(50)     = NULL,  
	   @ListName                       NVARCHAR(50)     = NULL,
	   @responseMessage                NVARCHAR(250)    OUTPUT

AS
BEGIN 
      SET NOCOUNT ON 
	   BEGIN TRY
	   BEGIN TRANSACTION
      UPDATE [InsightEM].[Subscribers]
      SET 
             
			  FirstName  = ISNULL(@FirstName, FirstName),
			  Lastname   = ISNULL(@Lastname, Lastname), 
			  EmailAddress = ISNULL (@EmailAddress, EmailAddress),  
			  ListName = ISNULL (@ListName, ListName)



      FROM   [InsightEM].[Subscribers]
      WHERE  
            SubscriberId  = @SubscriberId                  

         SET @responseMessage='Successful'
		  COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
	    ROLLBACK TRANSACTION
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO
------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into Subscribers table
------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Subscribers_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.Subscribers_Deleting
GO

CREATE PROCEDURE InsightEM.Subscribers_Deleting
         @SubscriberId  INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY
     DELETE [InsightEM].[Subscribers]
     FROM   [InsightEM].[Subscribers]
     WHERE  
     SubscriberId = @SubscriberId  
	        
    END TRY
    BEGIN CATCH
	        
    END CATCH
END 

GO


 -----------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for search facility for subscribers section
------------------------------------------------------------------------------------------------------------------------------

 IF ( OBJECT_ID('InsightEM.subscribers_search') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.subscribers_search
GO

CREATE PROCEDURE InsightEM.subscribers_search

       @SubscriberId   INT        
AS
BEGIN 
     SET NOCOUNT ON 

     SELECT 
            FirstName                    ,
            LastName                     ,
            EmailAddress                 

     FROM   [InsightEM].[Subscribers] (NOLOCK) 
     WHERE  
            SubscriberId =  @SubscriberId

END 

GO

------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Packages
------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Packages] ([PackageId] INT IDENTITY NOT NULL PRIMARY KEY,
                                  [PackageType] VARCHAR(20) NOT NULL,
                                  [ExpiryDate]  DATETIME NULL  DEFAULT (getdate()),
								  [Max_Subscribers] INT  NULL,
								  [Monthly_Price] INT  NULL,
                                );

------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[Packages] table
------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('Free', '3/25/2018', 100, NULL);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('free', '6/8/2017', 100, NULL);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('free', '11/16/2017', 100, NULL);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('free', '11/11/2017', 100, NULL);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('free', '7/2/2017', 100, NULL );
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('free', '5/6/2018', 100, NULL);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '6/6/2017', 500, 20);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '10/29/2017', 500, 20);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '11/13/2017', 500, 20);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '2/12/2018', 500, 20);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '4/29/2018', 500, 20);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '4/7/2018', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '7/28/2017', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '2/6/2018', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '10/8/2017', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '11/2/2017', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '1/29/2018', 1000, 30);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '7/25/2017', 2000, 40);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '5/20/2017', 2000, 40);
insert into [InsightEM].[Packages] (PackageType, ExpiryDate, Max_Subscribers, Monthly_Price) values ('premium', '2/3/2018', 2000, 40);

------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Users
------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [InsightEM].[Users]([UserId] INT IDENTITY NOT NULL PRIMARY KEY,
                              [UserName] NVARCHAR(50) NOT NULL,
                              [Password] NVARCHAR(20) NOT NULL,
                              [FirstName] NVARCHAR(50) NOT NULL,
                              [LastName] NVARCHAR(50) NOT NULL,
                              [PhoneNumber] NVARCHAR(25)  NULL,
							  [CreateDate] DATETIME NULL DEFAULT (getdate()),
							  [ModifiedDate] DATETIME NULL DEFAULT (getdate()),
							  [LastLogin] DATETIME  NULL DEFAULT (getdate()),
							  [AccountId] INT NOT NULL,
                              );
---------------------------------------------------------------------------------------------------------------------------------
--Inserting values in  table [InsightEM].[Users]
----------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('iallwright0', 'FR0rHU4', 'Itch', 'Allwright', '626-592-9516', '4/7/2018', '3/19/2018', '5/13/2018', 1);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('limison1', 'MDQ0asY8CLm', 'Ludvig', 'Imison', '506-218-2747', '4/16/2018', '2/13/2018', '3/6/2018', 2);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('pcordobes2', 'FIingU', 'Paton', 'Cordobes', '514-996-6778', '8/8/2017', '2/9/2018', '4/29/2018', 3);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('cfairall3', 'hcj5vgIHZX', 'Cy', 'Fairall', '432-986-1585', '3/22/2018', '12/2/2017', '3/22/2018', 4);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('ichestle4', '6eRmup6Y', 'Iain', 'Chestle', '630-728-0681', '4/14/2018', '9/10/2017', '8/15/2017', 5);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('dbonfield5', 'ooF8jVeusct', 'Darwin', 'Bonfield', '374-585-3234', '1/7/2018', '1/21/2018', '3/30/2018', 6);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('cable6', 'athuHw', 'Crosby', 'Able', '834-771-7177', '5/21/2017', '6/5/2017', '1/22/2018', 7);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('apauwel7', 'qBPJGzvTbi8', 'Arther', 'Pauwel', '259-618-9296', '6/19/2017', '2/5/2018', '11/22/2017', 8);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('hcoutts8', 'hD8jciIFm1U', 'Harley', 'Coutts', '812-190-2545', '8/12/2017', '8/22/2017', '9/15/2017', 9);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('tcersey9', 'oDLiK6mct00Y', 'Tanney', 'Cersey', '659-280-5853', '3/15/2018', '10/11/2017', '11/1/2017', 10);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('kmikoa', 'Uix0UKbH', 'Kristofer', 'Miko', '532-968-4460', '7/17/2017', '1/11/2018', '10/12/2017', 11);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('mblunsdenb', 'ULPSEu2o3', 'Mathew', 'Blunsden', '596-125-2903', '8/23/2017', '9/2/2017', '6/15/2017', 12);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('fholsallc', 'T3KBIMRDm', 'Feliks', 'Holsall', '790-389-8094', '4/18/2018', '5/12/2018', '11/10/2017', 13);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('aelvend', 'UzJYcfL', 'Archie', 'Elven', '266-751-9590', '6/29/2017', '8/4/2017', '2/22/2018', 14);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('cletforde', 'moqzgw257', 'Cris', 'Letford', '434-933-2254', '3/6/2018', '10/8/2017', '5/10/2018', 15);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('ptyef', 'x7pmJXNeN8H', 'Percy', 'Tye', '336-223-8832', '12/5/2017', '7/6/2017', '5/31/2017', 16);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('vonging', '0I5PJerX1Ci', 'Vite', 'Ongin', '392-879-2667', '5/9/2018', '5/21/2017', '6/19/2017', 17);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('gpiggotth', 'TeHjsv1N', 'Georgy', 'Piggott', '721-670-0700', '9/18/2017', '2/5/2018', '7/5/2017', 18);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('mrosenbloomi', 'R7Z4e1', 'Malchy', 'Rosenbloom', '304-268-3040', '2/15/2018', '11/16/2017', '5/27/2017', 19);
insert into [InsightEM].[Users] (UserName, [Password], FirstName, LastName, PhoneNumber, CreateDate, ModifiedDate, LastLogin, AccountId) values ('hebsworthj', 'bdCgot', 'Hymie', 'Ebsworth', '223-651-4767', '3/26/2018', '7/12/2017', '6/16/2017', 20);

---------------------------------------------------------------------------------------------------------------------------------------
--Alter table InsightEM.Users and add foreign keys refer to table [InsightEM].[Account]
---------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE [InsightEM].[Users] 
ADD FOREIGN KEY (AccountId)                  
REFERENCES [InsightEM].[Account](AccountId);

----------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for INSERT data into Users table
----------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Users_Insert') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Users_Insert
GO

CREATE PROCEDURE InsightEM.Users_Insert 


	   @FirstName                      NVARCHAR(50)     =  NULL, 
       @lastname                       NVARCHAR(50)     =  NULL, 
       @UserName                       NVARCHAR(50)     =  NULL, 
       @Password                       NVARCHAR(50)     =  NULL, 
       @PhoneNumber                    NVARCHAR(50)     =  NULL, 
	   @AccountId                      INT,
	   @responseMessage                NVARCHAR(250)     OUTPUT
AS
BEGIN 
      SET NOCOUNT ON 

      BEGIN TRY
	
	    
        INSERT INTO [InsightEM].[Users]
		       ([FirstName], [LastName], [UserName], [Password], [PhoneNumber], [AccountId])

        VALUES(@FirstName, @lastname,@UserName,@Password, @PhoneNumber,@AccountId)
		    
		       
         SET @responseMessage='Successful'
		  
    END TRY
    BEGIN CATCH
	    
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO

--------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for EDITING data into Users table
--------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Users_Update') IS NOT NULL ) 
   DROP PROCEDURE InsightEM.Users_Update
GO

CREATE PROCEDURE InsightEM.Users_Update 

       @UserId                         INT,
	   @UserName                       NVARCHAR(50)     = NULL, 
	   @Password                       NVARCHAR(50)     = NULL, 
       @FirstName                      NVARCHAR(50)     = NULL,
       @Lastname                       NVARCHAR(50)     = NULL, 
       @PhoneNumber                    NVARCHAR(25)     = NULL,
	   @responseMessage                NVARCHAR(250)     OUTPUT

AS
BEGIN 
      SET NOCOUNT ON 
	    BEGIN TRY
	   BEGIN TRANSACTION
      UPDATE [InsightEM].[Users]
      SET 
             
			  FirstName  = ISNULL(@FirstName, FirstName),
			  Lastname   = ISNULL(@Lastname, Lastname), 
			  UserName   = ISNULL(@UserName , UserName),
			  PhoneNumber = ISNULL(@PhoneNumber , PhoneNumber)


      FROM   [InsightEM].[Users]
      WHERE  
             UserId  = @UserId                 

         SET @responseMessage='Successful'
		  COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
	    ROLLBACK TRANSACTION
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
END 


GO
---------------------------------------------------------------------------------------------------------------------------------------
--Object: stored procedure for REMOVING data into Users table
---------------------------------------------------------------------------------------------------------------------------------------

IF ( OBJECT_ID('InsightEM.Users_Deleting') IS NOT NULL ) 
     DROP PROCEDURE InsightEM.Users_Deleting
GO

CREATE PROCEDURE InsightEM.Users_Deleting
         @UserId INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY
     DELETE [InsightEM].[Users]
     FROM   [InsightEM].[Users]
     WHERE  
      UserId = @UserId 

    END TRY
    BEGIN CATCH
	        
    END CATCH
END 

GO

---------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for FirstName for Users table
---------------------------------------------------------------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX [IDX_FirstName] ON [InsightEM].[Users]
(
	[FirstName] ASC
)
INCLUDE ( 	[UserId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
---------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for LastName for Users table
---------------------------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX [IDX_LastName] ON [InsightEM].[Users]
(
	[LastName] ASC
)
INCLUDE ( 	[UserId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
 DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for UserName for User table
------------------------------------------------------------------------------------------------------------------------------------

	CREATE UNIQUE NONCLUSTERED INDEX [IDX_UserName] ON [InsightEM].[Users]
(
	[UserName] ASC
)
INCLUDE ([UserId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO 
------------------------------------------------------------------------------------------------------------------------------------
--Object: INDEX for Passwoord for User table
------------------------------------------------------------------------------------------------------------------------------------

	CREATE UNIQUE NONCLUSTERED INDEX [IDX_Password] ON [InsightEM].[Users]
(
	[Password]ASC
)
INCLUDE ([UserId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF,
 ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO 
---------------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Permission
---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Permission]([PermissionId] INT IDENTITY NOT NULL PRIMARY KEY,
                                   [PermissionType] VARCHAR(20) NOT NULL,
                                   [AccountId] INT NOT NULL,
								   [UserId] INT NOT NULL,
                                   );

delete from[InsightEM].[Permission]
---------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in  table [InsightEM].[Permission]
---------------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('Edit', 1, 5);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('read', 2, 6);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 3, 7);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 4, 8);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('read', 5, 9);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 6,10);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 7, 11);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 8, 12);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('read', 9, 13);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('read', 10, 14);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('read', 11, 15);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 12, 16);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 13, 17);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 14, 18);
insert into [InsightEM].[Permission] (PermissionType, AccountId, UserId) values ('edit', 15, 19);

---------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Permission] and add foreign keys refer to table [InsightEM].[Account]
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Permission] 
ADD FOREIGN KEY (AccountId)                  
REFERENCES [InsightEM].[Account](AccountId)


---------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Permission] and add foreign keys refer to table [InsightEM].[Users]
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Permission] 
ADD FOREIGN KEY (UserId)                  
REFERENCES [InsightEM].[Users](UserId)
ON DELETE CASCADE; 




---------------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Orders
---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Orders] ([OrderId] INT IDENTITY NOT NULL PRIMARY KEY,
                               [PackageId] INT NOT NULL,
							   [AccountId] INT NOT NULL,
							   [Number_Subscriber] INT NOT NULL,
                               [Status] VARCHAR (20) NOT NULL,
							   [CreateDate] DATETIME NULL DEFAULT (getdate()),
							   [ModifiedDate] DATETIME NULL DEFAULT (getdate()),
                               );


ALTER TABLE InsightEM.Orders 
ALTER COLUMN [Status] VARCHAR(20)


---------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in  table [InsightEM].[Orders]
---------------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (1, 1, 195, 'paid', '3/26/2018', '3/5/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (2, 2, 78,  'paid', '6/2/2017', '1/7/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (3, 3, 493, 'paid', '1/7/2018', '4/2/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (4, 4, 41,  'paid', '9/11/2017', '1/18/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (5, 5, 142, 'paid', '12/13/2017', '9/30/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (6, 6, 379, 'unpaid', '4/17/2018', '10/1/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (7, 7, 489, 'unpaid', '8/2/2017', '5/3/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (8, 8, 395, 'unpaid', '8/18/2017', '5/1/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (9, 9, 202, 'unpaid', '8/23/2017', '8/11/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (10, 10, 275, 'unpaid', '8/8/2017', '7/27/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (11, 11, 231, 'unpaid', '8/18/2017', '10/30/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (12, 12, 218,  'unpaid', '5/4/2018', '10/21/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (13, 13, 201, 'unpaid', '9/16/2017', '1/24/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (14, 14, 390,  'paid', '11/28/2017', '7/18/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (15, 15, 436,  'paid', '2/9/2018', '7/8/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (16, 16, 128,  'paid', '8/4/2017', '11/8/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (17, 17, 178, 'paid', '2/8/2018', '12/6/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (18, 18, 451,  'paid', '3/2/2018', '10/23/2017');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (19, 19, 253,  'paid', '7/13/2017', '2/8/2018');
insert into [InsightEM].[Orders] (PackageId, AccountId, Number_Subscriber,  Status, CreateDate, ModifiedDate) values (20, 20, 298,  'paid', '10/2/2017', '5/26/2017');

-------------------------------------------------------------------------------------------------------------------------------------
--Alter table InsightEM.Orders and add foreign keys refer to table [InsightEM].[Packages]
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE InsightEM.Orders
ADD FOREIGN KEY (PackageId)                  
REFERENCES [InsightEM].[Packages] (PackageId)
ON DELETE CASCADE; 

---------------------------------------------------------------------------------------------------------------------------------------
--Alter table InsightEM.Orders and add foreign keys refer to table [InsightEM].[Account]
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE InsightEM.Orders
ADD FOREIGN KEY (AccountId)               
REFERENCES [InsightEM].[Account] (AccountId)
ON DELETE CASCADE; 

---------------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Roles
---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Roles] ([RoleId] INT IDENTITY NOT NULL PRIMARY KEY,
                              [Type_Role] VARCHAR(20) NOT NULL,
                              [UserId] INT NOT NULL,
                              );

delete from [InsightEM].[Roles]
---------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in  table [InsightEM].[Roles]
----------------------------------------------------------------------------------------------------------------------------------------
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('account manager', 5);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 6);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 7);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('account assistance', 8);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 9);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 10);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 11);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 12);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing assistance', 13);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('Clinical Specialist', 14);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 15);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 16);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 17);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 18);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values ('marketing executive', 19);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values (' Support Technician', 20);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values (' Support Technician', 21);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values (' Support Technician', 22);
insert into  [InsightEM].[Roles] (Type_Role, UserId) values (' Support Technician', 23);



----------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Roles] and add foreign keys refer to table [InsightEM].[Users]
----------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Roles]
ADD FOREIGN KEY (UserId)                  
REFERENCES [InsightEM].[Users] (UserId)
ON DELETE CASCADE; 

---------------------------------------------------------------------------------------------------------------------------------------
--Object: table InsightEM.Payment
---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE[InsightEM].[Payment] ([PaymentId] INT IDENTITY NOT NULL PRIMARY KEY,
                                  [PaymentDate] DATETIME NULL DEFAULT (getdate()),
								  [Card_Name] VARCHAR(50) NOT NULL,
								  [BankAccountId] VARCHAR (25) NOT NULL,
								  [PaymentFee] Money NOT NULL,
								  [Card_Expiration] DATE NOT NULL,
								  [Paypal_Email] VARCHAR(150) NOT NULL,
								  [paypal_Transactionid] VARCHAR(150) NOT NULL,
								  [OrderId] INT NOT NULL,
								  );


---------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[Payment] 
----------------------------------------------------------------------------------------------------------------------------------------
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('10/3/2017', 'Lothario Danielli', '152016526', '£59.51', '2/5/2018', 'ldanielli0@archive.org', '149227500', 1);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('7/12/2017', 'Bruce Thirwell', '748508530', '£24.49', '12/7/2017', 'bthirwell1@fotki.com', '728625165', 2);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('11/14/2017', 'Sergei Scroyton', '277571468', '£83.52', '8/19/2017', 'sscroyton2@joomla.org', '441169395', 3);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('2/12/2018', 'Glenna Belchem', '760429919', '£48.03', '2/6/2018', 'gbelchem3@scribd.com', '169301030', 4);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('10/15/2017', 'Helsa Heinz', '719262689', '£72.50', '6/2/2017', 'hheinz4@amazon.co.uk', '693280198', 5);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('6/28/2017', 'Brittney Bynold', '473336626', '£63.37', '3/25/2018', 'bbynold5@walmart.com', '941135897', 6);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('11/11/2017', 'Jeanelle Lansbury', '702365910', '£77.57', '6/15/2017', 'jlansbury6@jimdo.com', '201348359', 7);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('12/31/2017', 'Bronny Tabbernor', '737553444', '£87.23', '7/20/2017', 'btabbernor7@statcounter.com', '800221388', 8);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('1/7/2018', 'Jasmina Doggett', '496344380', '£24.22', '10/26/2017', 'jdoggett8@smh.com.au', '770328301', 9);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('9/15/2017', 'Margeaux Harniman', '927753042', '£63.76', '3/15/2018', 'mharniman9@huffingtonpost.com', '733211752', 10);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('3/23/2018', 'Ava Fewkes', '585789790', '£55.01', '6/16/2017', 'afewkesa@geocities.jp', '924380612', 11);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('1/20/2018', 'Lauree Baddoe', '789965355', '£53.84', '2/13/2018', 'lbaddoeb@edublogs.org', '344790588', 12);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('9/13/2017', 'Niel Gentle', '947991503', '£75.35', '2/22/2018', 'ngentlec@usnews.com', '174127474', 13);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('4/9/2018', 'Yoko Snoden', '209376773', '£28.82', '3/20/2018', 'ysnodend@tamu.edu', '659962619', 14);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('5/13/2018', 'Berky Dowyer', '635943746', '£71.39', '3/25/2018', 'bdowyere@constantcontact.com', '391200837', 15);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('7/5/2017', 'Miguel McColl', '218298808', '£47.39', '4/16/2018', 'mmccollf@dailymail.co.uk', '980428551', 16);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('1/24/2018', 'Karlan Crasswell', '150485634', '£53.90', '12/4/2017', 'kcrasswellg@livejournal.com', '522443864', 17);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('5/24/2017', 'Sayers GiacobbiniJacob', '888190050', '£94.44', '12/6/2017', 'sgiacobbinijacobh@eepurl.com', '604042920', 18);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('10/21/2017', 'Ilysa Vango', '352670335', '£20.88', '7/27/2017', 'ivangoi@wordpress.org', '764040985', 19);
insert into [InsightEM].[Payment] (PaymentDate, Card_Name, BankAccountId, PaymentFee, Card_Expiration, Paypal_Email, paypal_Transactionid, OrderId) values ('8/14/2017', 'Marcus Westfield', '730062562', '£96.47', '5/19/2017', 'mwestfieldj@flickr.com', '263964968', 20);

----------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Payment] and add foreign keys refer to table [InsightEM].[Orders]
----------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Payment]
ADD FOREIGN KEY (OrderId)                  
REFERENCES [InsightEM].[Orders] (OrderId)
ON DELETE CASCADE; 
---------------------------------------------------------------------------------------------------------------------------------------
--Create table InsightEM.Files
---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [InsightEM].[Files]([FileId] INT IDENTITY NOT NULL PRIMARY KEY,
                              [FileName] VARCHAR(250),
                              [FileSize] BIGINT,
						      [FileType] VARCHAR(5),
							  [UserId]   INT NOT NULL,
							  [AccountId] INT NOT NULL,
							  );

DELETE FROM [InsightEM].[Files]
---------------------------------------------------------------------------------------------------------------------------------------
--Inserting values in [InsightEM].[Files]
----------------------------------------------------------------------------------------------------------------------------------------  
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('IpsumPrimisIn.jpeg', 4958147536592, 'CSV', 5, 1);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Fusce.mpeg', 99569958097, 'EXCEL', 6, 2);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('EstCongueElementum.gif', 6861887198017, 'CSV', 7, 3);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('MorbiNonQuam.mp3', 2100556227, 'JASON', 8, 4);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('DolorSit.mp3', 696990166476, 'CSV', 9, 5);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('RhoncusDuiVel.tiff', 68546594288, 'EXCEL', 10, 6);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Integer.avi', 24802066293, 'EXCEL', 11, 7);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('MassaQuis.avi', 25896993130, 'JASON', 12, 8);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Non.mp3', 27466753914, 'EXCEL', 13, 9);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('In.avi', 40321737519503, 'EXCEL', 14, 10);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Rutrum.avi', 7411132727099, 'EXCEL', 15, 11);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('NibhInHac.mp3', 4031076930046, 'CSV', 16, 12);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Vel.gif', 44218582151, 'CSV', 17, 13);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('EgetEleifend.xls', 87160344350, 'CSV', 18, 14);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('AmetNullaQuisque.jpeg', 605086528181, 'CSV', 19, 15);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Consectetuer.ppt', 627247356, 'EXCEL', 20, 16);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('TortorQuis.ppt', 138383763766, 'EXCEL', 21, 17);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('DonecVitae.mp3', 5419093505863, 'EXCEL', 22, 18);
insert into [InsightEM].[Files] (FileName, FileSize, FileType, UserId, AccountId) values ('Cras.ppt', 69123300228, 'EXCEL', 23, 19);




SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [InsightEM].[File_Deleting]
         @FileId   INT   
		      
AS 
BEGIN 
     SET NOCOUNT ON 
	 BEGIN TRY
     DELETE [InsightEM].[Files]
     FROM  [InsightEM].[Files]
     WHERE  
     FileId = @FileId

    END TRY
    BEGIN CATCH
	        
    END CATCH
END 


GO

----------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Files] and add foreign keys refer to table [InsightEM].[Users]
----------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Files]
ADD FOREIGN KEY (UserId)                  
REFERENCES [InsightEM].[Users] (UserId)
ON DELETE CASCADE; 

----------------------------------------------------------------------------------------------------------------------------------------
--Alter table [InsightEM].[Files] and add foreign keys refer to table [InsightEM].[Account]
----------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE [InsightEM].[Files]
ADD FOREIGN KEY (AccountId)                  
REFERENCES [InsightEM].[Account](AccountId)
ON DELETE CASCADE; 


-----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: view for [InsightEM].[Account] (main user) and [InsightEM].[Users](subuser)
--------------------------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [InsightEM].[vw_AccountUsers]

WITH SCHEMABINDING

AS 

   SELECT A.[AccountId], U. [UserId],
   A.[FirstName], A.[LastName], A.[UserName], A.[Password], A.[CompanyName], A. [CompanySize],
   A.[EmailAddress], A.[WebSiteURL], A.[PhoneNumber], A.[AddressLine1]+''+A.[AddressLine2] AS FullAddress,
   A.[City], A.[Country], A.[PostCode],

   U.[FirstName] AS Fname, U.[LastName] AS Lname, U.[PhoneNumber] AS Phone, U. [UserName] AS [User],
   U.[Password] AS Pass

   FROM [InsightEM].[Account] A

   INNER JOIN [InsightEM].[Users] U
   ON A.AccountId = U.AccountId
   WITH CHECK OPTION;
GO

----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_AccountUsers]
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vwAccountUsers-AccountId]

    ON [InsightEM].[vw_AccountUsers]( [AccountId]
ASC)

GO

CREATE NONCLUSTERED INDEX [IDX_vwAccountUsers-UserId]

    ON [InsightEM].[vw_AccountUsers]( [UserId]
ASC)

GO
-------------------------------------------------------------------------------------------------------------------------------------------------
--Object view for CampaignTemplatesTElement retrieve information of three tables Campaign, template and elementTemplate 
--------------------------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [InsightEM].[vw_CampaignTemplatesTElement]

WITH SCHEMABINDING

AS 

   SELECT C.[CampaignId], T.[TemplateId], E.[TemplateElementId],

   C.[CampaignName], C.[FromEmail] , C.[FromName], C.[CreateDate],C.[ModifiedDate],

   T.[Template_Name], T.[Type_Template],

   E.[Name], E.[ElementType], E.[ElementCode]

   FROM [InsightEM].[Campaign] C

   INNER JOIN  [InsightEM].[Templates] T
   ON C.[CampaignId] = T.[TemplateId]

       INNER JOIN [InsightEM].[TemplateElement]  E
        ON T.[TemplateId] = E.[TemplateElementId]

GO

----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [vw_CampaignTemplatesTElement]
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vw_CampaignTemplatesTElement-CampaignId]

    ON [InsightEM].[vw_CampaignTemplatesTElement]( [CampaignId]
ASC)

GO

CREATE NONCLUSTERED INDEX [IDX_vw_CampaignTemplatesTElement-TemplateId]

    ON [InsightEM].[vw_CampaignTemplatesTElement]( [TemplateId]
ASC)

GO
CREATE NONCLUSTERED INDEX [IDX_vw_CampaignTemplatesTElement-TemplateElementId]

    ON [InsightEM].[vw_CampaignTemplatesTElement]( [TemplateElementId]
ASC)

GO
---------------------------------------------------------------------------------------------------------------------------------
--Object: view for account, Campaign and Subscribers
--Retrieves all subscribers that have recieved campaigns with information about their Subscribers and account
---------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [InsightEM].[vw_AccountCampaignSubscribers]

WITH SCHEMABINDING

AS 

    SELECT
	 
    C.[CampaignID], A.[AccountID],  S.[SubscriberID],
    C.[CampaignName], C.[FromEmail], C.[FromName], C.[TestEmail], C.[Number_Contact], C.[CreateDate],C.[ModifiedDate],

	A.[FirstName], A.[LastName], A.[UserName], A.[Password], A.[CompanyName], A.[WebSiteURL], A.[PhoneNumber],
	A.[PostCode], A.[City], A.[Country], A.[EmailAddress], A.[AddressLine1]+''+A.[AddressLine2] AS FullAddress,

	S.[FirstName] AS Fname, S.[LastName] AS Lname, S.[EmailAddress] AS Email
	
	FROM [InsightEM].[Account] A
    INNER JOIN [InsightEM].[Campaign] C
        ON A.[AccountID] = C.[AccountID]

    INNER JOIN  [InsightEM].[Subscribers] S
        ON A.[AccountID] = S.[AccountID]

GO

----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_AccountCampaignSubscribers]
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vwAccountCampaignSubscribers-CampaignID]

    ON [InsightEM].[vw_AccountCampaignSubscribers]( [CampaignID]

ASC)

GO

CREATE INDEX [IDX_vwAccountCampaignSubscribers-AccountID]

    ON [InsightEM].[vw_AccountCampaignSubscribers]( [AccountID]
ASC)

GO

CREATE INDEX [IDX_vwAccountCampaignSubscribers_AccountID_SubscriberID]

    ON [InsightEM].[vw_AccountCampaignSubscribers](  [SubscriberID] 
ASC)

GO
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Object: View [InsightEM].[vw_AccountSubscribers]
-- Description: Retrieves all subscribers of the account
-----------------------------------------------------------------------------------------------------------------------------------------------------

GO

CREATE VIEW [InsightEM].[vw_AccountSubscribers]

WITH SCHEMABINDING

AS 

    SELECT 

    A.[AccountID],  S.[SubscriberID],

    A.[CompanyName], A.[FirstName], A.[LastName], A.[CompanySize], A.[EmailAddress], A.[WebSiteURL],
	A.[PhoneNumber],A.[AddressLine1]+''+A.[AddressLine2] AS FullAddress, A.[City], A.[Country], A.[PostCode],

    S.[FirstName] AS Fname , S.[LastName] AS Lname, S.[EmailAddress]  AS Email, S.[ListName]

    FROM [InsightEM].[Account] A

    INNER JOIN [InsightEM].[Subscribers] S

        ON A.[AccountID] = S.[AccountID]

GO

----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_AccountSubscribers]
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vw_AccountSubscribers-AccountID]

    ON [InsightEM].[vw_AccountSubscribers]( [AccountID]
 
ASC)

GO

CREATE INDEX [IDX_AccountSubscribers-SubscriberID]

    ON [InsightEM].[vw_AccountSubscribers]( [SubscriberID]
ASC)

GO

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Object: View [InsightEM].[vw_CampaignCampaignTracking]
-- Description: Retrieves campaign and CampaignTracking
-----------------------------------------------------------------------------------------------------------------------------------------------------

GO

CREATE VIEW [InsightEM].[vw_CampaignCampaignTracking]

WITH SCHEMABINDING

AS 

    SELECT 

    C.[CampaignId],  CT.[CampaignTrackingId],

	C.[CampaignName], C.[FromEmail], C.[FromName], C.[TestEmail], C.[Number_Contact], C.[CreateDate],C.[ModifiedDate],

    CT.[Recipients], CT.[Opened], CT.[Uopened], CT.[Clicked], CT.[UnSubscribed], CT.[MarkedSpam], CT.[Forwards], CT.[Bounced],
	CT.[longitude], CT.[latitude]


    FROM [InsightEM].[Campaign] C

    INNER JOIN [InsightEM].[CampaignTracking] CT

        ON C.[CampaignId] = CT.[CampaignId]


GO
----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_CampaignCampaignTracking]

----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vw_CampaignCampaignTracking]
    ON [InsightEM].[vw_CampaignCampaignTracking]( [CampaignId]
 
ASC)

GO

CREATE INDEX [IDX_AccountSubscribers-CampaignTrackingId]

    ON [InsightEM].[vw_CampaignCampaignTracking]( [CampaignTrackingId]
ASC)

GO
---------------------------------------------------------------------------------------------------------------------------------
--Object: view for TrackingCampaignSubscribers
--Retrieves all subscribers that have received campaigns with information about their CampaignTracking and Subscribers
---------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [InsightEM].[vw_TrackingCampaignSubscribers]

WITH SCHEMABINDING

AS 

    SELECT
	 
    C.[CampaignID], T.[CampaignTrackingId], S.[SubscriberID],
    C.[CampaignName], C.[FromEmail], C.[FromName], C.[TestEmail], C.[Number_Contact], C.[CreateDate],C.[ModifiedDate],

    T.[Recipients], T.[Opened], T.[Uopened], T.[Clicked], T.[UnSubscribed], T.[MarkedSpam], T.[Forwards], T.[Bounced],
	T.[longitude], T.[latitude],

	S.[FirstName], S.[LastName], S.[EmailAddress] 
	
	FROM  [InsightEM].[Campaign] C
    INNER JOIN [InsightEM].[CampaignTracking] T
        ON C.[CampaignID] = T.[CampaignID]

    INNER JOIN  [InsightEM].[Subscribers] S
        ON T.[CampaignTrackingId] = S.[SubscriberId]

GO
----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_TrackingCampaignSubscribers]

----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vw_vw_TrackingCampaignSubscribers]
    ON [InsightEM].[vw_TrackingCampaignSubscribers]( [CampaignId]
 
ASC)

GO

CREATE INDEX [IDX_vw_TrackingCampaignSubscribers-CampaignTrackingId]

    ON [InsightEM].[vw_TrackingCampaignSubscribers]( [CampaignTrackingId]
ASC)

GO

CREATE INDEX [IDX_vw_TrackingCampaignSubscribers-SubscriberID]

    ON [InsightEM].[vw_TrackingCampaignSubscribers]( [SubscriberID]
ASC)

GO

---------------------------------------------------------------------------------------------------------------------------------
--Object: view for UserPermissionRole
--Retrieves all field of users, permission and roles tables 
---------------------------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [InsightEM].[vw_UserPermissionRole]

WITH SCHEMABINDING

AS 

    SELECT
	 
    U.[UserId], P.[PermissionId], R.[RoleId],
    U.[UserName], U.[Password], U.[FirstName], U.[LastName], U.[PhoneNumber], 
	P.[PermissionType], R.[Type_Role]
	FROM [InsightEM].[Users] U
    INNER JOIN [InsightEM].[Permission] P
        ON U.[UserId] = P.[PermissionId]
    INNER JOIN [InsightEM].[Roles] R
        ON P.[PermissionId] = R.[RoleId]

GO
----------------------------------------------------------------------------------------------------------------------------------------------------
--Object: index for view [InsightEM].[vw_UserPermissionRole]
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE UNIQUE CLUSTERED INDEX [IDX_vw_UserPermissionRole-UserId]
    ON [InsightEM].[vw_UserPermissionRole]( [UserId]
 
ASC)

GO

CREATE INDEX [IDX-vw_UserPermissionRole-PermissionId]

    ON [InsightEM].[vw_UserPermissionRole]( [PermissionId]
ASC)

GO

CREATE INDEX [IDX-vw_UserPermissionRole-RoleId]

    ON [InsightEM].[vw_UserPermissionRole]( [RoleId]
ASC)

GO
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Object: Function 
-- Description: show information about campaign including recipients, opens, unopened, clicks, unsubscribed, forwards,
-- bounce, markspam
-----------------------------------------------------------------------------------------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [InsightEM].[CampaignTrackingInfo] (@CampaignId INT)  
RETURNS TABLE  
AS  
RETURN   
(  
    SELECT C.CampaignId, C.CampaignName, C.FromEmail, C.FromName, 
	T.CampaignTrackingId, T.[Recipients], T.[Opened], T.[Uopened], T.[Clicked], T.[UnSubscribed],T.[MarkedSpam],
	T.[Forwards], T.[Bounced], T.[longitude], T.[latitude]
    FROM [InsightEM].[Campaign] AS C  
    JOIN [InsightEM].[CampaignTracking] AS T ON C.CampaignId = T.CampaignId 
 
    WHERE C.CampaignId = @CampaignId  
     
);  

GO

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Object: trigger 
-- Description: show message when change something in campagin table
-----------------------------------------------------------------------------------------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [InsightEM].[trigger1]  
ON   [InsightEM].[Campaign]
AFTER INSERT, UPDATE   
AS RAISERROR ('notify admin manager', 16, 10);  

GO

