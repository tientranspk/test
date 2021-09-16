CREATE TABLE [dbo].[transaction_io_order] (
    [Id]                    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [prd_sls]               DECIMAL (18)     DEFAULT ((0)) NOT NULL,
    [unit_convert]          DECIMAL (18, 5)  DEFAULT ((1)) NOT NULL,
    [reality_sls]           DECIMAL (18)     DEFAULT ((0)) NOT NULL,
    [reality_order_sls]     DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [inventory_sls]         DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [OrderCode]             NVARCHAR (200)   NULL,
    [InputId]               UNIQUEIDENTIFIER NULL,
    [OrderId]               UNIQUEIDENTIFIER NULL,
    [ProductId]             UNIQUEIDENTIFIER NULL,
    [UnitConvertId]         UNIQUEIDENTIFIER NULL,
    [prd_code]              NVARCHAR (200)   NULL,
    [prd_unit]              NVARCHAR (200)   NULL,
    [order_status]          NVARCHAR (100)   NULL,
    [prd_order_unit]        NVARCHAR (200)   NULL,
    [reality_delivery_date] DATE             NULL,
    [qc_package]            NVARCHAR (1000)  NULL,
    [partner]               NVARCHAR (200)   NULL,
    [transaction_type]      NVARCHAR (50)    NULL,
    [CreatedOn]             DATETIME2 (7)    NULL,
    [CreatedBy]             NVARCHAR (MAX)   NULL,
    [UpdatedOn]             DATETIME2 (7)    NULL,
    [UpdatedBy]             NVARCHAR (MAX)   NULL,
    [LastAccessed]          DATETIME2 (7)    NULL,
    [deleted]               INT              NULL,
    [IpAddress]             NVARCHAR (MAX)   NULL,
    [Old_Id]                INT              NULL,
    [Note]                  NVARCHAR (2000)  NULL,
    [InvoiceUnit]           NVARCHAR (100)   NULL,
    [InventoryUnits]        NVARCHAR (100)   NULL,
    [SpecificationQuality]  NVARCHAR (MAX)   NULL,
    [StockInOutImages]      NVARCHAR (MAX)   NULL,
    [IsSyncMisa]            INT              NOT NULL,
    [InputOrdersDetailId]   UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    [OrdersDetailId]        UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    [MisaCode]              UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    [NoteMisa]              NVARCHAR (MAX)   NULL,
    [CheckButtonWare]       NVARCHAR (MAX)   NULL,
    [CodeCancel]            NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_TransactionIoOrder] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_transaction_io_order_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[products] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_transaction_io_order_ProductId]
    ON [dbo].[transaction_io_order]([ProductId] ASC);

