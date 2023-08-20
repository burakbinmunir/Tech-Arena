        drop DATABASE TechArena
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

        -- it should be view 
            
        -- CREATE TABLE Profiles
        -- (
        --     profileID int  identity(1,1),
        --     profileMode int,
        --     profilePicture image,

        --     numberOfProjects int,
        --     projectInformation int,

        --     [description] nvarchar (500),

        -- -- Constraints --
        --     CONSTRAINT PROFILES_PROFILEID_PK PRIMARY KEY (profileID),
        --     CONSTRAINT PROFILES_PROFILEMODE_FK FOREIGN KEY (profileMode) REFERENCES ProfileModes (modeID),
        -- )

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


