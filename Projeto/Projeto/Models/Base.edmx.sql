
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/01/2017 20:36:53
-- Generated from EDMX file: C:\Users\Dioggines\Documents\Universidade Positivo\Aulas_aspnet\Projeto\Projeto\Models\Base.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Locadora];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LOCADORAVEICULO]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VEICULOSet] DROP CONSTRAINT [FK_LOCADORAVEICULO];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[LOCADORASet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LOCADORASet];
GO
IF OBJECT_ID(N'[dbo].[VEICULOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VEICULOSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LOCADORASet'
CREATE TABLE [dbo].[LOCADORASet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VEICULOSet'
CREATE TABLE [dbo].[VEICULOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Modelo] nvarchar(max)  NOT NULL,
    [Marca] nvarchar(max)  NOT NULL,
    [Cor] nvarchar(max)  NOT NULL,
    [LOCADORAId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'LOCADORASet'
ALTER TABLE [dbo].[LOCADORASet]
ADD CONSTRAINT [PK_LOCADORASet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VEICULOSet'
ALTER TABLE [dbo].[VEICULOSet]
ADD CONSTRAINT [PK_VEICULOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [LOCADORAId] in table 'VEICULOSet'
ALTER TABLE [dbo].[VEICULOSet]
ADD CONSTRAINT [FK_LOCADORAVEICULO]
    FOREIGN KEY ([LOCADORAId])
    REFERENCES [dbo].[LOCADORASet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LOCADORAVEICULO'
CREATE INDEX [IX_FK_LOCADORAVEICULO]
ON [dbo].[VEICULOSet]
    ([LOCADORAId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------