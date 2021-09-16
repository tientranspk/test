﻿CREATE TABLE [dbo].[transaction_buy_sales] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [prd_sls]           DECIMAL (18)     NOT NULL,
    [unit_convert]      DECIMAL (18, 5)  NOT NULL,
    [prd_sls_reality]   DECIMAL (18, 2)  NULL,
    [inventory_sls]     DECIMAL (18, 2)  NULL,
    [OrderCode]         NVARCHAR (MAX)   NULL,
    [transaction_id]    NVARCHAR (200)   NULL,
    [prd_code]          NVARCHAR (200)   NULL,
    [exp_delivery_date] DATE             NULL,
    [order_status_2]    NVARCHAR (45)    NULL,
    [order_status]      NVARCHAR (45)    NULL,
    [order_date]        DATETIME         NULL,
    [partner]           NVARCHAR (200)   NULL,
    [transaction_type]  NVARCHAR (45)    NULL,
    [orders_date_sync]  DATETIME         NULL,
    [CreatedOn]         DATETIME2 (7)    NULL,
    [CreatedBy]         NVARCHAR (MAX)   NULL,
    [UpdatedOn]         DATETIME2 (7)    NULL,
    [UpdatedBy]         NVARCHAR (MAX)   NULL,
    [LastAccessed]      DATETIME2 (7)    NULL,
    [deleted]           INT              NULL,
    [IpAddress]         NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_transaction_buy_sales] PRIMARY KEY CLUSTERED ([Id] ASC)
);

