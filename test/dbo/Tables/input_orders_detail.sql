﻿CREATE TABLE [dbo].[input_orders_detail] (
    [Id]                    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UnitConvertId]         UNIQUEIDENTIFIER NULL,
    [ProductId]             UNIQUEIDENTIFIER NULL,
    [InputId]               UNIQUEIDENTIFIER NULL,
    [bo_sp_id]              NVARCHAR (200)   NULL,
    [bo_id]                 NVARCHAR (200)   NULL,
    [product_name]          NVARCHAR (500)   NULL,
    [product_unit]          NVARCHAR (200)   NULL,
    [ID_Unit]               NVARCHAR (200)   NULL,
    [ex_delivery_date]      DATE             NULL,
    [ex_delivery_new_date]  DATE             NULL,
    [supplier_name]         NVARCHAR (200)   NULL,
    [sales_id]              NVARCHAR (45)    NULL,
    [delivery_status_2]     NVARCHAR (45)    NULL,
    [delivery_status]       NVARCHAR (45)    NULL,
    [status_sls]            NVARCHAR (45)    NULL,
    [unit_by_inventory]     NVARCHAR (200)   NULL,
    [notes]                 NVARCHAR (2000)  NULL,
    [qc_packages]           NVARCHAR (1000)  NULL,
    [delivery_info]         NVARCHAR (100)   NULL,
    [reality_delivery_date] DATE             NULL,
    [qc_rating]             NVARCHAR (10)    NULL,
    [qc_description]        NVARCHAR (100)   NULL,
    [checked_person]        NVARCHAR (45)    NULL,
    [confirmed]             NVARCHAR (45)    NULL,
    [image_1]               NVARCHAR (500)   NULL,
    [image_2]               NVARCHAR (500)   NULL,
    [image_3]               NVARCHAR (500)   NULL,
    [lot_status]            NVARCHAR (50)    NULL,
    [temp_sls]              DECIMAL (18, 2)  NULL,
    [input_date]            DATETIME         NULL,
    [lot_type]              NVARCHAR (100)   NULL,
    [product_sls]           DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [unit_convert]          DECIMAL (18, 5)  DEFAULT ((0)) NOT NULL,
    [product_price]         DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [product_amount]        DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [reality_sls]           DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [reality_order_sls]     DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [inventory_sls]         DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [CreatedOn]             DATETIME2 (7)    NULL,
    [CreatedBy]             NVARCHAR (MAX)   NULL,
    [UpdatedOn]             DATETIME2 (7)    NULL,
    [UpdatedBy]             NVARCHAR (MAX)   NULL,
    [LastAccessed]          DATETIME2 (7)    NULL,
    [deleted]               INT              NULL,
    [IpAddress]             NVARCHAR (MAX)   NULL,
    [InvoiceUnit]           NVARCHAR (200)   NULL,
    [SpecificationQuality]  NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_InputOrdersDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_input_orders_detail_input_InputId] FOREIGN KEY ([InputId]) REFERENCES [dbo].[input] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_input_orders_detail_InputId]
    ON [dbo].[input_orders_detail]([InputId] ASC);
