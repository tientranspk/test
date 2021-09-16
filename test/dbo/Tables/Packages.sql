﻿CREATE TABLE [dbo].[Packages] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ProductId]         UNIQUEIDENTIFIER NULL,
    [SupplierId]        UNIQUEIDENTIFIER NULL,
    [ProductName]       NVARCHAR (200)   NULL,
    [InventorySls]      DECIMAL (18, 4)  DEFAULT ((0)) NOT NULL,
    [ConvertSls]        DECIMAL (18, 4)  DEFAULT ((0)) NOT NULL,
    [SupplierName]      NVARCHAR (200)   NULL,
    [CreatedOn]         DATETIME2 (7)    NULL,
    [CreatedBy]         NVARCHAR (MAX)   NULL,
    [UpdatedOn]         DATETIME2 (7)    NULL,
    [UpdatedBy]         NVARCHAR (MAX)   NULL,
    [LastAccessed]      DATETIME2 (7)    NULL,
    [deleted]           INT              NULL,
    [IpAddress]         NVARCHAR (MAX)   NULL,
    [ConvertUnitName]   NVARCHAR (MAX)   NULL,
    [Node]              NVARCHAR (MAX)   NULL,
    [InventoryUnitName] NVARCHAR (MAX)   NULL,
    [Name]              NVARCHAR (MAX)   NULL,
    [QcPackages]        NVARCHAR (MAX)   NULL,
    [Type]              NVARCHAR (MAX)   NULL,
    [StockInId]         UNIQUEIDENTIFIER NULL,
    [StockOutId]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_Package] PRIMARY KEY CLUSTERED ([Id] ASC)
);
