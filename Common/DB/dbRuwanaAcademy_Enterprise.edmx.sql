
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/29/2020 17:50:06
-- Generated from EDMX file: E:\RWP\RuwanaAcademy_Enterprise\RuwanaAcademy_Enterprise\Common\DB\dbRuwanaAcademy_Enterprise.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbRuwanaAcademyEnterprise];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClassesLecturers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Classes] DROP CONSTRAINT [FK_ClassesLecturers];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassesSubjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Classes] DROP CONSTRAINT [FK_ClassesSubjects];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassRegistrationsClasses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassRegistrations] DROP CONSTRAINT [FK_ClassRegistrationsClasses];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassRegistrationsStudents]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassRegistrations] DROP CONSTRAINT [FK_ClassRegistrationsStudents];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeesUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_EmployeesUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_HallAllocationsClasses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HallAllocations] DROP CONSTRAINT [FK_HallAllocationsClasses];
GO
IF OBJECT_ID(N'[dbo].[FK_HallAllocationsHalls]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HallAllocations] DROP CONSTRAINT [FK_HallAllocationsHalls];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerPaymentDetailsClasses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerPaymentDetails] DROP CONSTRAINT [FK_LecturerPaymentDetailsClasses];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerPaymentDetailsLecturerPayments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerPaymentDetails] DROP CONSTRAINT [FK_LecturerPaymentDetailsLecturerPayments];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerPaymentDetailsLecturerRates]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerPaymentDetails] DROP CONSTRAINT [FK_LecturerPaymentDetailsLecturerRates];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerPaymentsLecturers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerPayments] DROP CONSTRAINT [FK_LecturerPaymentsLecturers];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerRatesLecturers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerRates] DROP CONSTRAINT [FK_LecturerRatesLecturers];
GO
IF OBJECT_ID(N'[dbo].[FK_LecturerRatesSujbects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LecturerRates] DROP CONSTRAINT [FK_LecturerRatesSujbects];
GO
IF OBJECT_ID(N'[dbo].[FK_MenusMenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menus] DROP CONSTRAINT [FK_MenusMenus];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleMenuAccesses_Menus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleMenuAccesses] DROP CONSTRAINT [FK_RoleMenuAccesses_Menus];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleMenuAccesses_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleMenuAccesses] DROP CONSTRAINT [FK_RoleMenuAccesses_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleTilesRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleTiles] DROP CONSTRAINT [FK_RoleTilesRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentPaymentDetailsStudentPayments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudentPaymentDetails] DROP CONSTRAINT [FK_StudentPaymentDetailsStudentPayments];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentPaymentsStudents]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudentPayments] DROP CONSTRAINT [FK_StudentPaymentsStudents];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRolesRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserRolesRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRolesUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserRolesUsers];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO
IF OBJECT_ID(N'[dbo].[ClassRegistrations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassRegistrations];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[HallAllocations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HallAllocations];
GO
IF OBJECT_ID(N'[dbo].[Halls]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Halls];
GO
IF OBJECT_ID(N'[dbo].[LecturerPaymentDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LecturerPaymentDetails];
GO
IF OBJECT_ID(N'[dbo].[LecturerPayments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LecturerPayments];
GO
IF OBJECT_ID(N'[dbo].[LecturerRates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LecturerRates];
GO
IF OBJECT_ID(N'[dbo].[Lecturers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lecturers];
GO
IF OBJECT_ID(N'[dbo].[Menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menus];
GO
IF OBJECT_ID(N'[dbo].[Parameters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parameters];
GO
IF OBJECT_ID(N'[dbo].[RoleMenuAccesses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleMenuAccesses];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[RoleTiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleTiles];
GO
IF OBJECT_ID(N'[dbo].[StudentPaymentDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudentPaymentDetails];
GO
IF OBJECT_ID(N'[dbo].[StudentPayments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudentPayments];
GO
IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[Subjects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subjects];
GO
IF OBJECT_ID(N'[dbo].[UserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRoles];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [ClassID] int IDENTITY(1,1) NOT NULL,
    [LecturerID] int  NOT NULL,
    [SubjectID] int  NOT NULL,
    [ClassCode] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Category] int  NOT NULL,
    [Type] int  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [DateOfConduct] int  NOT NULL,
    [StartTime] time  NOT NULL,
    [EndTime] time  NOT NULL,
    [AdmissionFee] decimal(18,8)  NOT NULL,
    [MonthlyFee] decimal(18,8)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'ClassRegistrations'
CREATE TABLE [dbo].[ClassRegistrations] (
    [ClassRegID] int IDENTITY(1,1) NOT NULL,
    [ClassID] int  NOT NULL,
    [StudentID] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmployeeID] int IDENTITY(1,1) NOT NULL,
    [Title] int  NOT NULL,
    [Initials] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [NICNo] nvarchar(max)  NOT NULL,
    [ContactNo] nvarchar(max)  NOT NULL,
    [Designation] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'LecturerPaymentDetails'
CREATE TABLE [dbo].[LecturerPaymentDetails] (
    [LecPayDetailsID] int IDENTITY(1,1) NOT NULL,
    [LecPaymentID] int  NOT NULL,
    [ClassID] int  NOT NULL,
    [Amount] decimal(18,8)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL,
    [LecturerRateID] int  NOT NULL,
    [Paid] bit  NOT NULL,
    [MonthForPay] int  NULL
);
GO

-- Creating table 'LecturerPayments'
CREATE TABLE [dbo].[LecturerPayments] (
    [LecPaymentID] int IDENTITY(1,1) NOT NULL,
    [LecturerID] int  NOT NULL,
    [PaymentReceiptNo] nvarchar(max)  NOT NULL,
    [TotalAmount] decimal(18,8)  NOT NULL,
    [PaidDate] datetime  NULL,
    [Remark] nvarchar(max)  NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'LecturerRates'
CREATE TABLE [dbo].[LecturerRates] (
    [LecturerRateID] int IDENTITY(1,1) NOT NULL,
    [LecturerID] int  NOT NULL,
    [SubjectID] int  NOT NULL,
    [PaymentRate] decimal(18,8)  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Lecturers'
CREATE TABLE [dbo].[Lecturers] (
    [LecturerID] int IDENTITY(1,1) NOT NULL,
    [Title] int  NOT NULL,
    [Initials] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [NICNo] nvarchar(max)  NOT NULL,
    [ContactNo] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Menus'
CREATE TABLE [dbo].[Menus] (
    [MenuID] int IDENTITY(1,1) NOT NULL,
    [ParentMenuID] int  NULL,
    [DisplaySequence] int  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [Area] nvarchar(max)  NULL,
    [Controller] nvarchar(max)  NULL,
    [Action] nvarchar(max)  NULL
);
GO

-- Creating table 'Parameters'
CREATE TABLE [dbo].[Parameters] (
    [ParameterID] int IDENTITY(1,1) NOT NULL,
    [ParameterCode] nvarchar(max)  NOT NULL,
    [ParameterValue] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'RoleTiles'
CREATE TABLE [dbo].[RoleTiles] (
    [RoleTileID] int IDENTITY(1,1) NOT NULL,
    [RoleID] int  NOT NULL,
    [TileID] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'StudentPaymentDetails'
CREATE TABLE [dbo].[StudentPaymentDetails] (
    [StudPayDetailsID] int IDENTITY(1,1) NOT NULL,
    [StudPaymentID] int  NOT NULL,
    [ClassRegID] int  NOT NULL,
    [Type] int  NOT NULL,
    [Amount] decimal(18,8)  NOT NULL,
    [PaidMonth] int  NULL,
    [Paid] bit  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'StudentPayments'
CREATE TABLE [dbo].[StudentPayments] (
    [StudPaymentID] int IDENTITY(1,1) NOT NULL,
    [StudentID] int  NOT NULL,
    [PaymentReceiptNo] nvarchar(max)  NOT NULL,
    [TotalAmount] decimal(18,8)  NOT NULL,
    [PaidDate] datetime  NULL,
    [Remark] nvarchar(max)  NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [StudentID] int IDENTITY(1,1) NOT NULL,
    [RFID] nvarchar(max)  NOT NULL,
    [Initials] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Gender] int  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [GuardianName] nvarchar(max)  NOT NULL,
    [ContactNo] nvarchar(max)  NOT NULL,
    [SchoolName] nvarchar(max)  NOT NULL,
    [StudCategory] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Subjects'
CREATE TABLE [dbo].[Subjects] (
    [SubjectID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Category] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'UserRoles'
CREATE TABLE [dbo].[UserRoles] (
    [UserRoleID] int IDENTITY(1,1) NOT NULL,
    [UserID] int  NOT NULL,
    [RoleID] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [EmployeeID] int  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Status] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'HallAllocations'
CREATE TABLE [dbo].[HallAllocations] (
    [HallAllocationID] int IDENTITY(1,1) NOT NULL,
    [HallID] int  NOT NULL,
    [ClassID] int  NOT NULL,
    [ScheduleDate] datetime  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'Halls'
CREATE TABLE [dbo].[Halls] (
    [HallID] int IDENTITY(1,1) NOT NULL,
    [HallName] nvarchar(max)  NOT NULL,
    [HallDescription] nvarchar(max)  NULL,
    [StudentCapacity] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL
);
GO

-- Creating table 'RoleMenuAccesses'
CREATE TABLE [dbo].[RoleMenuAccesses] (
    [Menus_MenuID] int  NOT NULL,
    [Roles_RoleID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ClassID] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([ClassID] ASC);
GO

-- Creating primary key on [ClassRegID] in table 'ClassRegistrations'
ALTER TABLE [dbo].[ClassRegistrations]
ADD CONSTRAINT [PK_ClassRegistrations]
    PRIMARY KEY CLUSTERED ([ClassRegID] ASC);
GO

-- Creating primary key on [EmployeeID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC);
GO

-- Creating primary key on [LecPayDetailsID] in table 'LecturerPaymentDetails'
ALTER TABLE [dbo].[LecturerPaymentDetails]
ADD CONSTRAINT [PK_LecturerPaymentDetails]
    PRIMARY KEY CLUSTERED ([LecPayDetailsID] ASC);
GO

-- Creating primary key on [LecPaymentID] in table 'LecturerPayments'
ALTER TABLE [dbo].[LecturerPayments]
ADD CONSTRAINT [PK_LecturerPayments]
    PRIMARY KEY CLUSTERED ([LecPaymentID] ASC);
GO

-- Creating primary key on [LecturerRateID] in table 'LecturerRates'
ALTER TABLE [dbo].[LecturerRates]
ADD CONSTRAINT [PK_LecturerRates]
    PRIMARY KEY CLUSTERED ([LecturerRateID] ASC);
GO

-- Creating primary key on [LecturerID] in table 'Lecturers'
ALTER TABLE [dbo].[Lecturers]
ADD CONSTRAINT [PK_Lecturers]
    PRIMARY KEY CLUSTERED ([LecturerID] ASC);
GO

-- Creating primary key on [MenuID] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [PK_Menus]
    PRIMARY KEY CLUSTERED ([MenuID] ASC);
GO

-- Creating primary key on [ParameterID] in table 'Parameters'
ALTER TABLE [dbo].[Parameters]
ADD CONSTRAINT [PK_Parameters]
    PRIMARY KEY CLUSTERED ([ParameterID] ASC);
GO

-- Creating primary key on [RoleID] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [RoleTileID] in table 'RoleTiles'
ALTER TABLE [dbo].[RoleTiles]
ADD CONSTRAINT [PK_RoleTiles]
    PRIMARY KEY CLUSTERED ([RoleTileID] ASC);
GO

-- Creating primary key on [StudPayDetailsID] in table 'StudentPaymentDetails'
ALTER TABLE [dbo].[StudentPaymentDetails]
ADD CONSTRAINT [PK_StudentPaymentDetails]
    PRIMARY KEY CLUSTERED ([StudPayDetailsID] ASC);
GO

-- Creating primary key on [StudPaymentID] in table 'StudentPayments'
ALTER TABLE [dbo].[StudentPayments]
ADD CONSTRAINT [PK_StudentPayments]
    PRIMARY KEY CLUSTERED ([StudPaymentID] ASC);
GO

-- Creating primary key on [StudentID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([StudentID] ASC);
GO

-- Creating primary key on [SubjectID] in table 'Subjects'
ALTER TABLE [dbo].[Subjects]
ADD CONSTRAINT [PK_Subjects]
    PRIMARY KEY CLUSTERED ([SubjectID] ASC);
GO

-- Creating primary key on [UserRoleID] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [PK_UserRoles]
    PRIMARY KEY CLUSTERED ([UserRoleID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [HallAllocationID] in table 'HallAllocations'
ALTER TABLE [dbo].[HallAllocations]
ADD CONSTRAINT [PK_HallAllocations]
    PRIMARY KEY CLUSTERED ([HallAllocationID] ASC);
GO

-- Creating primary key on [HallID] in table 'Halls'
ALTER TABLE [dbo].[Halls]
ADD CONSTRAINT [PK_Halls]
    PRIMARY KEY CLUSTERED ([HallID] ASC);
GO

-- Creating primary key on [Menus_MenuID], [Roles_RoleID] in table 'RoleMenuAccesses'
ALTER TABLE [dbo].[RoleMenuAccesses]
ADD CONSTRAINT [PK_RoleMenuAccesses]
    PRIMARY KEY CLUSTERED ([Menus_MenuID], [Roles_RoleID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [LecturerID] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [FK_ClassesLecturers]
    FOREIGN KEY ([LecturerID])
    REFERENCES [dbo].[Lecturers]
        ([LecturerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassesLecturers'
CREATE INDEX [IX_FK_ClassesLecturers]
ON [dbo].[Classes]
    ([LecturerID]);
GO

-- Creating foreign key on [SubjectID] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [FK_ClassesSubjects]
    FOREIGN KEY ([SubjectID])
    REFERENCES [dbo].[Subjects]
        ([SubjectID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassesSubjects'
CREATE INDEX [IX_FK_ClassesSubjects]
ON [dbo].[Classes]
    ([SubjectID]);
GO

-- Creating foreign key on [ClassID] in table 'ClassRegistrations'
ALTER TABLE [dbo].[ClassRegistrations]
ADD CONSTRAINT [FK_ClassRegistrationsClasses]
    FOREIGN KEY ([ClassID])
    REFERENCES [dbo].[Classes]
        ([ClassID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassRegistrationsClasses'
CREATE INDEX [IX_FK_ClassRegistrationsClasses]
ON [dbo].[ClassRegistrations]
    ([ClassID]);
GO

-- Creating foreign key on [ClassID] in table 'LecturerPaymentDetails'
ALTER TABLE [dbo].[LecturerPaymentDetails]
ADD CONSTRAINT [FK_LecturerPaymentDetailsClasses]
    FOREIGN KEY ([ClassID])
    REFERENCES [dbo].[Classes]
        ([ClassID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerPaymentDetailsClasses'
CREATE INDEX [IX_FK_LecturerPaymentDetailsClasses]
ON [dbo].[LecturerPaymentDetails]
    ([ClassID]);
GO

-- Creating foreign key on [StudentID] in table 'ClassRegistrations'
ALTER TABLE [dbo].[ClassRegistrations]
ADD CONSTRAINT [FK_ClassRegistrationsStudents]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[Students]
        ([StudentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassRegistrationsStudents'
CREATE INDEX [IX_FK_ClassRegistrationsStudents]
ON [dbo].[ClassRegistrations]
    ([StudentID]);
GO

-- Creating foreign key on [ClassRegID] in table 'StudentPaymentDetails'
ALTER TABLE [dbo].[StudentPaymentDetails]
ADD CONSTRAINT [FK_StudentPaymentDetailsClassRegistrations]
    FOREIGN KEY ([ClassRegID])
    REFERENCES [dbo].[ClassRegistrations]
        ([ClassRegID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentPaymentDetailsClassRegistrations'
CREATE INDEX [IX_FK_StudentPaymentDetailsClassRegistrations]
ON [dbo].[StudentPaymentDetails]
    ([ClassRegID]);
GO

-- Creating foreign key on [EmployeeID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_EmployeesUsers]
    FOREIGN KEY ([EmployeeID])
    REFERENCES [dbo].[Employees]
        ([EmployeeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeesUsers'
CREATE INDEX [IX_FK_EmployeesUsers]
ON [dbo].[Users]
    ([EmployeeID]);
GO

-- Creating foreign key on [LecPaymentID] in table 'LecturerPaymentDetails'
ALTER TABLE [dbo].[LecturerPaymentDetails]
ADD CONSTRAINT [FK_LecturerPaymentDetailsLecturerPayments]
    FOREIGN KEY ([LecPaymentID])
    REFERENCES [dbo].[LecturerPayments]
        ([LecPaymentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerPaymentDetailsLecturerPayments'
CREATE INDEX [IX_FK_LecturerPaymentDetailsLecturerPayments]
ON [dbo].[LecturerPaymentDetails]
    ([LecPaymentID]);
GO

-- Creating foreign key on [LecturerID] in table 'LecturerPayments'
ALTER TABLE [dbo].[LecturerPayments]
ADD CONSTRAINT [FK_LecturerPaymentsLecturers]
    FOREIGN KEY ([LecturerID])
    REFERENCES [dbo].[Lecturers]
        ([LecturerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerPaymentsLecturers'
CREATE INDEX [IX_FK_LecturerPaymentsLecturers]
ON [dbo].[LecturerPayments]
    ([LecturerID]);
GO

-- Creating foreign key on [LecturerID] in table 'LecturerRates'
ALTER TABLE [dbo].[LecturerRates]
ADD CONSTRAINT [FK_LecturerRatesLecturers]
    FOREIGN KEY ([LecturerID])
    REFERENCES [dbo].[Lecturers]
        ([LecturerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerRatesLecturers'
CREATE INDEX [IX_FK_LecturerRatesLecturers]
ON [dbo].[LecturerRates]
    ([LecturerID]);
GO

-- Creating foreign key on [MenuID] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_MenusMenus]
    FOREIGN KEY ([MenuID])
    REFERENCES [dbo].[Menus]
        ([MenuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RoleID] in table 'RoleTiles'
ALTER TABLE [dbo].[RoleTiles]
ADD CONSTRAINT [FK_RoleTilesRoles]
    FOREIGN KEY ([RoleID])
    REFERENCES [dbo].[Roles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleTilesRoles'
CREATE INDEX [IX_FK_RoleTilesRoles]
ON [dbo].[RoleTiles]
    ([RoleID]);
GO

-- Creating foreign key on [RoleID] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [FK_UserRolesRoles]
    FOREIGN KEY ([RoleID])
    REFERENCES [dbo].[Roles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRolesRoles'
CREATE INDEX [IX_FK_UserRolesRoles]
ON [dbo].[UserRoles]
    ([RoleID]);
GO

-- Creating foreign key on [StudPaymentID] in table 'StudentPaymentDetails'
ALTER TABLE [dbo].[StudentPaymentDetails]
ADD CONSTRAINT [FK_StudentPaymentDetailsStudentPayments]
    FOREIGN KEY ([StudPaymentID])
    REFERENCES [dbo].[StudentPayments]
        ([StudPaymentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentPaymentDetailsStudentPayments'
CREATE INDEX [IX_FK_StudentPaymentDetailsStudentPayments]
ON [dbo].[StudentPaymentDetails]
    ([StudPaymentID]);
GO

-- Creating foreign key on [StudentID] in table 'StudentPayments'
ALTER TABLE [dbo].[StudentPayments]
ADD CONSTRAINT [FK_StudentPaymentsStudents]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[Students]
        ([StudentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentPaymentsStudents'
CREATE INDEX [IX_FK_StudentPaymentsStudents]
ON [dbo].[StudentPayments]
    ([StudentID]);
GO

-- Creating foreign key on [UserID] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [FK_UserRolesUsers]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRolesUsers'
CREATE INDEX [IX_FK_UserRolesUsers]
ON [dbo].[UserRoles]
    ([UserID]);
GO

-- Creating foreign key on [Menus_MenuID] in table 'RoleMenuAccesses'
ALTER TABLE [dbo].[RoleMenuAccesses]
ADD CONSTRAINT [FK_RoleMenuAccesses_Menus]
    FOREIGN KEY ([Menus_MenuID])
    REFERENCES [dbo].[Menus]
        ([MenuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Roles_RoleID] in table 'RoleMenuAccesses'
ALTER TABLE [dbo].[RoleMenuAccesses]
ADD CONSTRAINT [FK_RoleMenuAccesses_Roles]
    FOREIGN KEY ([Roles_RoleID])
    REFERENCES [dbo].[Roles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleMenuAccesses_Roles'
CREATE INDEX [IX_FK_RoleMenuAccesses_Roles]
ON [dbo].[RoleMenuAccesses]
    ([Roles_RoleID]);
GO

-- Creating foreign key on [SubjectID] in table 'LecturerRates'
ALTER TABLE [dbo].[LecturerRates]
ADD CONSTRAINT [FK_LecturerRatesSujbects]
    FOREIGN KEY ([SubjectID])
    REFERENCES [dbo].[Subjects]
        ([SubjectID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerRatesSujbects'
CREATE INDEX [IX_FK_LecturerRatesSujbects]
ON [dbo].[LecturerRates]
    ([SubjectID]);
GO

-- Creating foreign key on [ClassID] in table 'HallAllocations'
ALTER TABLE [dbo].[HallAllocations]
ADD CONSTRAINT [FK_HallAllocationsClasses]
    FOREIGN KEY ([ClassID])
    REFERENCES [dbo].[Classes]
        ([ClassID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HallAllocationsClasses'
CREATE INDEX [IX_FK_HallAllocationsClasses]
ON [dbo].[HallAllocations]
    ([ClassID]);
GO

-- Creating foreign key on [HallID] in table 'HallAllocations'
ALTER TABLE [dbo].[HallAllocations]
ADD CONSTRAINT [FK_HallAllocationsHalls]
    FOREIGN KEY ([HallID])
    REFERENCES [dbo].[Halls]
        ([HallID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HallAllocationsHalls'
CREATE INDEX [IX_FK_HallAllocationsHalls]
ON [dbo].[HallAllocations]
    ([HallID]);
GO

-- Creating foreign key on [LecturerRateID] in table 'LecturerPaymentDetails'
ALTER TABLE [dbo].[LecturerPaymentDetails]
ADD CONSTRAINT [FK_LecturerPaymentDetailsLecturerRates]
    FOREIGN KEY ([LecturerRateID])
    REFERENCES [dbo].[LecturerRates]
        ([LecturerRateID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerPaymentDetailsLecturerRates'
CREATE INDEX [IX_FK_LecturerPaymentDetailsLecturerRates]
ON [dbo].[LecturerPaymentDetails]
    ([LecturerRateID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------