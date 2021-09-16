﻿CREATE TABLE [dbo].[quotes] (
    [Id]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [quotes_code]      NVARCHAR (250)   NULL,
    [cus_id]           UNIQUEIDENTIFIER NULL,
    [quotes_name]      NVARCHAR (250)   NULL,
    [quotes_status]    NVARCHAR (45)    NULL,
    [vat]              NVARCHAR (50)    NULL,
    [vat_price]        NVARCHAR (200)   NULL,
    [vat_not_include]  NVARCHAR (200)   NULL,
    [total_price]      NVARCHAR (200)   NULL,
    [payment_method]   NVARCHAR (200)   NULL,
    [quotes_date]      DATE             NULL,
    [ex_delivery_date] DATE             NULL,
    [notes]            NVARCHAR (200)   NULL,
    [quotes_effective] NVARCHAR (200)   NULL,
    [CreatedOn]        DATETIME2 (7)    NULL,
    [CreatedBy]        NVARCHAR (MAX)   NULL,
    [UpdatedOn]        DATETIME2 (7)    NULL,
    [UpdatedBy]        NVARCHAR (MAX)   NULL,
    [LastAccessed]     DATETIME2 (7)    NULL,
    [deleted]          INT              NULL,
    [IpAddress]        NVARCHAR (MAX)   NULL,
    [QuotesType]       NVARCHAR (MAX)   NULL,
    [PersonName]       NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_Quote] PRIMARY KEY CLUSTERED ([Id] ASC)
);

