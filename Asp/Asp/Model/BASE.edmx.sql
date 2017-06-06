
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/01/2017 19:35:15
-- Generated from EDMX file: C:\Users\Aluno\Documentos\Visual Studio 2015\Projects\Asp\Asp\Model\BASE.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Venda];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'VENDASet'
CREATE TABLE [dbo].[VENDASet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(50)  NOT NULL,
    [Valor] decimal(19,6)  NOT NULL
);
GO

-- Creating table 'ItemVendaSet'
CREATE TABLE [dbo].[ItemVendaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Descricao] nvarchar(50)  NOT NULL,
    [Quantidade] decimal(19,6)  NOT NULL,
    [VENDAId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'VENDASet'
ALTER TABLE [dbo].[VENDASet]
ADD CONSTRAINT [PK_VENDASet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ItemVendaSet'
ALTER TABLE [dbo].[ItemVendaSet]
ADD CONSTRAINT [PK_ItemVendaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [VENDAId] in table 'ItemVendaSet'
ALTER TABLE [dbo].[ItemVendaSet]
ADD CONSTRAINT [FK_VENDAItemVenda]
    FOREIGN KEY ([VENDAId])
    REFERENCES [dbo].[VENDASet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VENDAItemVenda'
CREATE INDEX [IX_FK_VENDAItemVenda]
ON [dbo].[ItemVendaSet]
    ([VENDAId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------