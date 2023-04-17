CREATE DATABASE 
    [GeekGuestbook]
ON (
        NAME=GeekGuestBook,
        FILENAME = 'C:\Users\markd\source\repos\MVC-Guestbook\GeekGuestbook2\App_Data\GeekGuestbook.mdf'
    );

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/17/2023 13:24:44
-- Generated from EDMX file: C:\Users\markd\source\repos\MVC-Guestbook\GeekGuestbook2\Models\GeekGuestbookModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GeekGuestbook];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Messages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Messages];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [MessageId] int  NOT NULL,
    [Created] datetime  NOT NULL,
    [Header] varchar(50)  NOT NULL,
    [Body] varchar(500)  NOT NULL,
    [Name] varchar(50)  NULL,
    [Email] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MessageId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([MessageId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------