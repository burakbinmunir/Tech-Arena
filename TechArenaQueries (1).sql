
        CREATE DATABASE TechArena

        GO
        USE TechArena
        GO

        -- This table holds all of the required information initally taken from a user who signs up
        -- Evaluative information like areas of interest, qualification, field e.t.c are also taken
        -- however since they are multivalued instead of saving them here, a new table for each is 
        -- made and the userName acts as a foreign key for all
        -- This helps in profile maintainence

        GO
        CREATE TABLE Users
        (
            email nvarchar(30) NOT NULL,
            userName nvarchar(20) NOT NULL,
            [password] nvarchar (10) NOT NULL,
            userPicture IMAGE
            
            -- Constraints --
            CONSTRAINT USERS_EMAIL_UNIQUE UNIQUE (email),
            CONSTRAINT USERS_USERNAME_PK PRIMARY KEY (userName), 

            CONSTRAINT CHECK_EMAIL CHECK (email like '%_@__%.__%'),
            CONSTRAINT NO_WHITESPACE CHECK (([password] NOT LIKE '%[^abcdefghijklmnopqrstuvwxyz@#0-9]%' AND LEN([password]) > 6 AND LEN ([password]) <= 10))

        )
        
        

       
       

        CREATE TABLE Fields
        (
            fieldID int identity(1,1),
            fieldName nvarchar (50) NOT NULL,

            -- Constraints --
            CONSTRAINT FIELD_FIELDID_PK PRIMARY KEY (fieldID),
        )
        GO

        -- This table consists of the possible domains of the user [computer-related]
        -- The user will have to select from a pre-selected list
        -- Examples include Software Engineer, Data Scientist, Artifical Intelligence Engineer
        -- Information Systems, Big Data Engineer, Database Developer, UX Developer

        CREATE TABLE UserFields (
            userName NVARCHAR(20),
            fieldID int ,

            --- Constraints ----
            CONSTRAINT USERFIELDS_USERNAMEFIELDID_PK PRIMARY KEY (userName, fieldID),
            CONSTRAINT USERFIELDS_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users (userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERFIELDS_FIELDID_FK FOREIGN KEY (fieldID) REFERENCES Fields (fieldID) On UPDATE CASCADE On DELETE No ACTION
        )

        GO


        
        -- This table offers the users a wide range of options to select their areas of interest
        -- This helps to filter connections with similar interests, or offer particular courses

        GO
        
        CREATE TABLE AreasOfInterests
        (
            interestID int identity(1,1),
            interestName nvarchar(50) NOT NULL,

            -- Constraints --
            CONSTRAINT AREASOFINTEREST_INTERESTID_PK PRIMARY KEY(interestID),
        )

        CREATE TABLE UserInterests
        (
            userName NVARCHAR(20),
            interestID int,

            --- CONSTRAINT ---
            CONSTRAINT USERINTERESTS_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users (userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERINTERESTS_INTERESTID_FK FOREIGN KEY (interestID) REFERENCES AreasOfInterests (interestID) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERINTERESTS_USERNAME_INTERESTID_PK PRIMARY KEY (userName,interestID),
        )
        
        -- This table holds the qualification details of a user
        -- Such as; Undergraduate, Graduate, Post Doctorate

        GO
        CREATE TABLE Qualifications
        (

            qualificationID int  identity(1,1),
            qualificationName nvarchar (50), 

        -- Constraints --
            CONSTRAINT QUALIFICATIONS_QUALIFICATIONID_PK PRIMARY KEY (qualificationID),
        )

        CREATE TABLE USERQUALIFICATIONS
        (
            qualificationID int,
            userName NVARCHAR(20),

            -- CONSTRAINT ---
            CONSTRAINT USERQUALIFICATION_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users (userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERQUALIFICATION_QUALIFICATIONID_FK FOREIGN KEY (qualificationID) REFERENCES Qualifications (qualificationID) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERQUALIFICATION_USERNAME_QUALIFICATIONID_PK PRIMARY KEY (userName, qualificationID),

        )
        -- This table holds the specified 3 options for a profile
        -- Namely; Contributer, Hirer, Coder

        GO
        CREATE TABLE ProfileModes
        (
            modeID int  identity(1,1), 
            modeType nvarchar(30), 
            -- Constraints --
            CONSTRAINT PROFILEMODE_MODEID_PK PRIMARY KEY (modeID),   
        )
        

        CREATE TABLE USERPROFILES
        (
            userName NVARCHAR(20),
            modeID int,

            CONSTRAINT USERPROFILES_USERNAME_MODEID_PK PRIMARY KEY (userName, modeID),
            CONSTRAINT USERPROFILES_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users (userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERPROFILE_MODEID_FK FOREIGN KEY (modeID) REFERENCES ProfileModes (modeID) On UPDATE CASCADE On DELETE No ACTION,
        )

        -- This table maintains both sides' information w.r.t a connection

        GO
        CREATE TABLE Connections 
        (
            username1 nvarchar(20),
            usermame2 nvarchar(20),
        )

        -- This table contains information of each course that's offered on TechArena
        -- Status bit refers to either an incomplete (0) or complete (1) value

        GO
        CREATE TABLE Courses 
        (   
            courseID int  identity(1,1), 
            courseName nvarchar(50),
            courseLink nvarchar(500) NOT NULL,

            -- Constraints --
            CONSTRAINT COURSE_COURSEID_PK PRIMARY KEY (courseID),
        )

        CREATE TABLE USERCOURSES 
        (
            userName nvarchar(20),
            courseID int,

            [status] bit,       -- completed / progress

            endingDate DATE,
            startingDate DATE,

            CONSTRAINT USERCOURSES_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users (userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERCOURSES_COURSEID_FK FOREIGN KEY (courseID) REFERENCES Courses (courseID) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT USERCOURSES_USERNAME_COURSEID_PK PRIMARY KEY (userName,courseID),

        )
        

       

        -- This table holds the statistics regarding an individuals progress

        GO
        CREATE TABLE DashBoard
        (
            totalEnrollmentsCompleted int,
            totalEnrollmentsInProgress int,
            rankingPercentage int,
        )

        -- This table consists of all of the information of a user's project, no matter the profile mode

        GO
        CREATE TABLE Projects
        (

            projectID int identity(1,1),
            
            userName NVARCHAR(20),
            projectName nvarchar(50) NOT NULL,
            projectDescription nvarchar(1000),
            
            readMeFile varbinary(max),

            projectType bit,    -- opensource = true , closedsource = false 

            dateOfLastUpdate date,

            -- Constraints --
            CONSTRAINT PR0JECTID_PK PRIMARY KEY (projectID),
            CONSTRAINT PROJECTS_USERNAME_FK FOREIGN Key (userName) REFERENCES USers (userName) On UPDATE CASCADE On DELETE No ACTION
        )
        

        -- This table holds unique code ids for all of the files submitted in various projects
        -- Multiple files can be submitted in the desired language of the user

        GO
        CREATE TABLE Codes
        (
            projectID int, 

            codeID int  identity(1,1),
            codeFile varbinary(max),
            codeFileName nvarchar (50),

            -- Constraints --
            CONSTRAINT CODEID_PK PRIMARY KEY (codeID),
            CONSTRAINT PROJECTID_C_FK FOREIGN KEY (projectID) REFERENCES Projects(projectID) On UPDATE CASCADE On DELETE No ACTION
        )
        

        -- This table handles each individual's personal pages, from the necessities like profileIDs to 
        -- details of the projects e.t.c

        GO
            
        CREATE TABLE Profiles
        (
            profileID int  identity(1,1),
            profileMode int,
            profilePicture image,

            numberOfProjects int,
            projectInformation int,

            [description] nvarchar (500),

        -- Constraints --
            CONSTRAINT PROFILES_PROFILEID_PK PRIMARY KEY (profileID),
            CONSTRAINT PROFILES_PROFILEMODE_FK FOREIGN KEY (profileMode) REFERENCES ProfileModes (modeID),
        )

        -- this table maintains the necessary records of all the changes by other users made in the code

        GO
        CREATE TABLE Contributions
        (
            contributionID int  identity(1,1),

            updatedFile varbinary(max),

            userName nvarchar(20),
            projectID int,

            -- Constraints --
            CONSTRAINT CONTRIBUTIONID_PK PRIMARY KEY(contributionID),
            CONSTRAINT CONTRIBUTION_USERNAME_FK FOREIGN KEY (userName) REFERENCES Users(userName) On UPDATE CASCADE On DELETE No ACTION,
            CONSTRAINT PROJECTID_EDITED_FK FOREIGN KEY (projectID) REFERENCES Projects(projectID)
        )




use TechArena
GO

--- Get Field ID Against any Field Name -----

Create PROCEDURE getFieldID
@name NVARCHAR(50), @id int OUT
AS 
   BEGIN    
      SELECT @id = Fields.fieldID
      FROM [TechArena].dbo.[Fields]
      WHERE  Fields.fieldName = @name
   END
GO

--- Get Qualification ID Against any Qualification Name -----

CREATE PROCEDURE getQualificationID
@name NVARCHAR (50), @id int OUT
As 

   BEGIN
      SELECT @id = Qualifications.qualificationID
      FROM [TechArena].dbo.[Qualifications]
      WHERE Qualifications.qualificationName = @name
   END
GO

--- Get Profile Mode ID Against any Profile Mode ----

CREATE PROCEDURE getProfileModeID
@mode nvarchar(50), @id int OUT
As 
   BEGIN

      select @id = ProfileModes.modeID
      From [TechArena].dbo.[ProfileModes]
      WHERE [ProfileModes].modeType = @mode

   END
GO 

--- signing up means entering new data into the table so this procedure performs that task ----

CREATE PROCEDURE signUp
@email NVARCHAR(50), @userName NVARCHAR(20), @password NVARCHAR(20),
@fieldName NVARCHAR(50), @qualificationName NVARCHAR(50),
@profileMode NVARCHAR(20), @profilePic IMAGE, 
@sucess1 bit out, @sucess2 bit out ,@sucess3 bit out
AS
 BEGIN

   -- insertion in users table   
    INSERT [TechArena].dbo.Users ([email],[userName],[password],[UserPicture])
    VALUES (@email, @userName,@password,@profilePic)

   --- finding field against given field name
    DECLARE @fieldID int
    EXECUTE [TechArena].dbo.getFieldID @fieldName, @fieldID out
   
   
    if (@fieldID) is not NULL

      --- insertion in user field table
      BEGIN
         INSERT [TechArena].dbo.UserFields ([userName],[fieldID])
         VALUEs (@userName,@fieldID)
         set @sucess1 = 1
      END

   ELSE 
      begin 
         set @sucess1 = 0
      END

   -- getting qualification id from the table of qualification for entrance in user qualification
    DECLARE @qualificationID int 
    EXECUTE [TechArena].dbo.getQualificationID @qualificationName ,@qualificationID out

    if (@qualificationID) is not NULL

      begin 
         INSERT [TechArena].dbo.USERQUALIFICATIONS ([userName],[qualificationID])
         VALUES (@userName,@qualificationID)
         set @sucess2 = 1
      END

   ELSE 
      begin 
               set @sucess2 = 0   
      END

      -- getting mode id from the table of profile modes for entterence in userprofile
      DECLARE @modeID int
      EXECUTE [TechArena].[dbo].getProfileModeID @profileMode, @modeID out

      IF (@modeID) is not NULL

         BEGIN
            INSERT [TechArena].dbo.USERPROFILES ([userName],[modeID])
            VALUES (@userName,@modeID)
            set @sucess3 = 1
         END
      ELSE 
         begin 
            set @sucess3 = 0
         END

 END
GO


--- this procedure verifies the entry and retrun true for the success ------

CREATE PROCEDURE logIN 
@userName NVARCHAR(20), @password NVARCHAR(20), @loginSuccess bit OUT
As 
   BEGIN
      IF Exists --- if user with particular crendtial exists
      (
         select * from [TechArena].dbo.Users
         where Users.userName = @userName AND Users.password = @password
      )
         BEGIN
            Set @loginSuccess = 1
         END

      ELSE
         BEGIN
            SET @loginSuccess = 0
         END
   END
GO

--- This procesure updates the password in the users table-----

CREATE PROCEDURE changePassword
@userName NVARCHAR (20), @password NVARCHAR(50), @sucess bit OUT
As 
   BEGIN
      update [TechArena].dbo.Users
      set Users.password = @password
      where Users.userName = @userName
   END
GO

--- Adding area of interest of user -----

CREATE PROCEDURE addAreasOfInterest
@interestName NVARCHAR(20), @userName Nvarchar(20), @success bit out
AS 
   BEGIN 
      DECLARE @id INT
      select @id = AreasOfInterests.interestID
      From TechArena.dbo.AreasOfInterests
      where AreasOfInterests.interestName = @interestName

      if (@id)  is not NULL
         BEGIN
            INSERT TechArena.dbo.UserInterests ([userName],[interestID])
            VALUES (@userName,@interestName)
            set @success = 1
         END

      ELSE
         BEGIN
            set @success = 0
         End
   END
GO

---- IF any user who is no more interested in any interest area we can remove his interest ----

create PROCEDURE removeAreasOfInterest
@userName NVARCHAR(20), @interestName NVARCHAR(50), @success bit OUT
AS 
   BEGIN
   DECLARE @id INT
      select @id = AreasOfInterests.interestID
      From TechArena.dbo.AreasOfInterests
      where AreasOfInterests.interestName = @interestName

   
      delete FROM [TechArena].dbo.UserInterests
      WHERE UserInterests.userName = @userName And UserInterests.interestID = @id
   END

GO

-- This procesure allows user to change thier username except for contributors ----

create PROCEDURE changeUserName
@newUserName NVARCHAR(20), @userName NVARCHAR(20),@success Bit OUT
AS
   BEGIN
      DECLARE @mode NVARCHAR(50)
      Select @mode = ProfileModes.modeType
      from TechArena.dbo.ProfileModes JOIN TechArena.dbo.UserProfiles On ProfileModes.modeID = USERPROFILES.modeID
      WHERE USERPROFILES.userName = @userName

      If (@mode Like 'Contributor') --- check for contributor
         BEGIN
            PRINT 'You Cannot Change Your UserName'
            set @success = 0
         END
      ELSE
         BEGIN
            Update TechArena.dbo.Users
            Set Users.userName = @newUserName
            WHERE Users.userName = @userName
         End
   END
GO

--- new project added by a user ---- 

CREATE PROCEDURE addProject
@userName NVARCHAR(20), @proName NVARCHAR(50), @proDescription NVARCHAR(1000),
@readFile varbinary(max), @proType Bit, @lastUpdate DATE, @cFile varbinary (1000), @cFileName NVARCHAR(50),
@success bit OUT
AS 
   BEGIN 
      If Exists (
         select Users.userName
         from TechArena.dbo.Users
         where Users.userName = @userName
      )

         BEGIN
            Insert TEchArena.dbo.Projects ([userName],[projectName],[projectDescription],[readMeFile],[projectType],[dateOfLastUpdate])
            VALUEs (@userName,@proName,@proDescription,@readFile,@proType,@lastUpdate)
         
            Set @success = 1

            DECLARE @proID int
            select @proId = Projects.projectID
            from TechArena.dbo.Projects
            WHERE Projects.projectName = @proName And Projects.userName = @userName

            Insert TEchArena.dbo.Codes ([codeFile],[codeFileName],[projectID])
            VALUES (@cFile,@cFileName,@proID)
         END

      ELSE 
         BEGIN
            Set @success = 0
         END
   END
GO


--- this procedure allows a user to remove any project from his / her profile --

create PROCEDURE removeProject
@userName NVARCHAR(20), @proName NVARCHAR(50), @sucess Bit Out
As 
   BEGIN
      DELETE From TechArena.dbo.Projects
      WHERE Projects.userName = @userName And Projects.projectName = @proName
      Set @sucess = 1
   END
GO


--- this procedure allows any users to update his / her existing code in a project --

create PROCEDURE updateProjectFile
@userName NVARCHAR(20), @proName NVARCHAR(50), @newFile varbinary (max), @newReadMeFile varbinary (max)
As 
   BEGIN
      UPDATE TechArena.dbo.Projects
      Set Projects.readMeFile = @newReadMeFile
      Where Projects.userName = @userName And Projects.projectName = @proName

      Declare @proID int
      select @proID = Projects.projectID
      from TechArena.dbo.Projects
      where Projects.userName = @userName and Projects.projectName = @proName
         

      Update TechArena.dbo.Codes
      Set Codes.codeFile = @newFile
      WHERE Codes.ProjectId = @proID

   END
GO


-- an admin can delete a course from the dashboard which provides available courses --

create PROCEDURE deleteCourse
@courseName NVARCHAR(50)
As 
   BEGIN
      Delete From TechArena.dbo.Courses
      WHERE Courses.courseName  = @courseName
   END
GO

-- this procedure will update the user course information once that course has been completed ---

create PROCEDURE endCourse
@userName NVARCHAR (50), @courseName NVARCHAR(50)
As 
   BEGIN
      DECLARE @cID INT
      select @cID = Courses.courseID
      From TechArena.dbo.Courses
      WHERE Courses.courseName = @courseName

      if (@cID) is not NULL
         BEGIN
            UPDATE TechArena.dbo.USERCOURSES
            set  UserCourses.[status] = 1
            where USERCOURSES.userName = @userName And USERCOURSES.courseID = @cID
         END
   END
GO

-- a user can choose to drop a course anytime during the learning process -- 

create PROCEDURE dropCourse
@userName NVARCHAR(50), @courseName NVARCHAR(50)
As
   BEGIN

   DECLARE @cID INT
      select @cID = Courses.courseID
      From TechArena.dbo.Courses
      WHERE Courses.courseName = @courseName

      if (@cID) is not NULL
         BEGIN
            Delete TechArena.dbo.USERCOURSES
            where USERCOURSES.userName = @userName And USERCOURSES.courseID = @cID
         END
   END
GO


-- a user can delete his / her account using this procedure --- 

create PROCEDURE deleteAccount
@userName NVARCHAR(50)
As 
   Begin
      delete  TechArena.dbo.USers
      where Users.userName = @userName
   END
GO


--- a user can approach another user's profile to make a connection just like LinkedIn -- 

create PROCEDURE makeConnection
@user1 NVARCHAR(20), @user2 NVARCHAR(20)
As 
   BEGIN
      if nOT Exists(
         select * from TechArena.dbo.Connections
         where Connections.usermame2 = @user1 And Connections.username1 = @user2 or  Connections.usermame2 = @user1 And Connections.username1 = @user2 
      ) 
            BEGIN
             INSERT TechArena.dbo.Connections ([username1],[usermame2])
             VALUES (@user1,@user2)
            END
   END
GO


-- A user can also remove that connection if needed -- 

CREATE PROCEDURE removeConnection
@user1 NVARCHAR(20), @user2 NVARCHAR(20)
As 
   BEGIN
      DELETE TechArena.dbo.Connections
      where Connections.username1 = @user1 And Connections.usermame2  = @user2 Or Connections.username1 = @user2 And Connections.usermame2 = @user1
   END
GO


--- This procedure allows a user to add new fields -- 
create PROCEDURE addNewField
@fieldName NVARCHAR
as 
   BEGIN
      Insert TechArena.dbo.Fields ([fieldName])
      VALUES (@fieldName)
   END
Go

-- this user allows a user to search other users by name -- 

create PROCEDURE searchUserByName
@userName NVARCHAR(20), @users NVARCHAR(20)
As 
   BEGIN
      select @users = Users.userName
      from TechArena.dbo.Users
      where Users.userName = @userName
   END
GO

-- this procedure allows a user to search other users by email

create PROCEDURE searchUserByEmail
@email NVARCHAR(20), @users NVARCHAR(20)
As 
   BEGIN
      select @users = Users.email
      from TechArena.dbo.Users
      where Users.email = @email
   END
GO

-- this procedure allows a user to view projects -- 

create PROCEDURE seeUserProjects
@userName NVARCHAR(50)
As 
   BEGIN
      select * 
      from TechArena.dbo.Projects
      where Projects.userName = @userName
   END
GO

--- this procedure allows a user to start learning a new course --- 

create PROCEDURE registerNewCourse
@userName NVARCHAR(50), @courseName NVARCHAR(20), @endDate DATE
As 
   BEGIN

      DECLARE @cID INT
      select @cID = Courses.courseID
      From TechArena.dbo.Courses
      WHERE Courses.courseName = @courseName

      if (@cID) is not null

         Begin
            Insert USERCOURSES ([userName],[courseID],[startingDate],[endingDate],[status])
            VALUES (@userName,@cID,GETDATE(),@endDate,0)
         END

   End
GO

--- this procedure allows a user to add new areas of interest whenever he / she might want to update this section -- 

create PROCEDURE addNewAreaOfInterest
@areaOfInterest NVARCHAR
as 
   BEGIN
      Insert TechArena.dbo.AreasOfInterests ([interestName])
      VALUES (@areaOfInterest)
   END
Go


create procedure addNewQualification
@qualificationName NVARCHAR
as 
   BEGIN
      Insert TechArena.dbo.Qualifications ([qualificationName])
      VALUES (@qualificationName)
   END
Go


--- this adds new profiles in the database ---

create PROCEDURE addNewProfileMode
@modeName NVARCHAR
as 
   BEGIN
      Insert TechArena.dbo.ProfileModes ([modeType])
      VALUES (@modeName)
   END
Go


--- admin functionality to add new courses --- 

create PROCEDURE addNewCourse
@courseName NVARCHAR, @courseLink NVARCHAR(50)
as 
   BEGIN
      Insert TechArena.dbo.Courses ([courseName],[courseLink])
      VALUES (@courseName,@courseLink)
   END
Go


create PROCEDURE viewProfile
@profileID_ nca
------ Triggers ---------

create TRIGGER newCourseAdded ON TechArena.dbo.Courses
After INSERT 
AS 
   BEGIN
      print 'New Course Added'
   END
GO


create Trigger dropTableTrigger  On database
for  drop_table
As 
   BEGIN
    print 'You cannot drop any table from techarena'
   END
GO


create TRIGGER newProfileMode ON TechArena.dbo.ProfileModes
After INSERT 
AS 
   BEGIN
      print 'New Profile Mode Added'
   END
GO


create TRIGGER newQualificationAdded ON TechArena.dbo.Qualifications
After INSERT 
AS 
   BEGIN
      print 'New Qualification Added'
   END
GO


create TRIGGER newfiledAdded On TechArena.dbo.field
After INSERT
AS
   BEGIN
      print 'New Filed Added Successfully'
   END
GO



CREATE TRIGGER DataInsertInUsers on  TechArena.dbo.Users
after INSERT
As 
   BEGIN
      print 'Data Entered Successfully in Users Table'
   END
GO


CREATE TRIGGER projectFileUpdated On  TechArena.dbo.Projects
after Update
AS
   BEGIN
      print 'Project File Updated Successfully'
   END
GO


CREATE TRIGGER projectDeleted On  TechArena.dbo.Projects
after DELETE
AS
   BEGIN
      print 'Project Deleted Successfully'
   END
GO

create TRIGGER newProjectAdded On  TechArena.dbo.Projects
After INSERT
As 
   Begin
      print 'Project Data Added to Projects Table'
      
   END
GO


CREATE TRIGGER  areaOfInterestRemoved On TechArena.dbo.AreasOfInterests
after delete 
As 
   BEGIN
      print 'Areas of Interest Deleted Successfully'
   END
Go

CREATE TRIGGER newAreasOfInterestAdded on TechArena.dbo.AreasOfInterests
after INSERT
As 
   BEGIN
      print 'New interest Added in Areas of Interest Table'
   END
GO


CREATE TRIGGER DataUpdatedInUsers on  TechArena.dbo.Users
after Update
As 
   BEGIN
      print 'Data Entered Successfully in Users Table'
   END
GO


CREATE TRIGGER newCourseRegistered On  TechArena.dbo.Courses
after Insert
AS
   BEGIN
      print 'New Course Added'
   END
GO


CREATE TRIGGER courseDeleted On TechArena.dbo.Courses
After DELETE
AS 
   BEGIN 
      print 'Course Deleted'
   END
Go

create TRIGGER connectionRemoved ON TechArena.dbo.Connections
After Delete
AS 
   BEGIN
      print 'Connection Deleted';
   END
GO


create TRIGGER connectionEstablished ON TechArena.dbo.Connections
After INSERT 
AS 
   BEGIN
      print 'New Connection Establised'
   END
GO

CREATE TRIGGER userDeleted On TechArena.dbo.Users
After DELETE
As 
   BEGIN
      print 'User deleted successfully'
   END
GO


CREATE TRIGGER courseDropped On  TechArena.dbo.UserCourses
after Insert
AS
   BEGIN
      print 'UserCourse updated'
   END
GO


