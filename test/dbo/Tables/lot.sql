CREATE TABLE [dbo].[lot] (
    [Id]                    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [lot_name]              NVARCHAR (200)   NULL,
    [bo_code]               NVARCHAR (200)   NULL,
    [UnitConvertId]         UNIQUEIDENTIFIER NULL,
    [InputOrdersDetailId]   UNIQUEIDENTIFIER NULL,
    [OrdersDetailId]        UNIQUEIDENTIFIER NULL,
    [so_code]               NVARCHAR (200)   NULL,
    [order_id]              NVARCHAR (200)   NULL,
    [prd_code]              NVARCHAR (200)   NULL,
    [ProductId]             UNIQUEIDENTIFIER NULL,
    [ex_delivery_date_buy]  DATE             NULL,
    [ex_delivery_date_sale] DATE             NULL,
    [lot_type]              NVARCHAR (100)   NULL,
    [buy_lot_order_sls]     NVARCHAR (200)   DEFAULT ((0)) NULL,
    [lot_status]            NVARCHAR (200)   NULL,
    [process]               NVARCHAR (200)   NULL,
    [reason]                NVARCHAR (200)   NULL,
    [return_date]           DATE             NULL,
    [note]                  NVARCHAR (200)   NULL,
    [prd_unit]              NVARCHAR (200)   NULL,
    [unit_by_inventory]     NVARCHAR (200)   NULL,
    [type]                  NVARCHAR (50)    NULL,
    [check_person]          NVARCHAR (200)   NULL,
    [buy_sls]               DECIMAL (18)     DEFAULT ((0)) NULL,
    [sale_sls]              DECIMAL (18)     DEFAULT ((0)) NULL,
    [buy_lot_sls]           DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [return_sls]            DECIMAL (18)     DEFAULT ((0)) NULL,
    [inventory_return_sls]  DECIMAL (18)     DEFAULT ((0)) NULL,
    [CreatedOn]             DATETIME2 (7)    NULL,
    [CreatedBy]             NVARCHAR (MAX)   NULL,
    [UpdatedOn]             DATETIME2 (7)    NULL,
    [UpdatedBy]             NVARCHAR (MAX)   NULL,
    [LastAccessed]          DATETIME2 (7)    NULL,
    [deleted]               INT              NULL,
    [IpAddress]             NVARCHAR (MAX)   NULL,
    [ConfirmBy]             NVARCHAR (MAX)   NULL,
    [InventorySls]          DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [pk_Lot] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_lot_input_orders_detail_InputOrdersDetailId] FOREIGN KEY ([InputOrdersDetailId]) REFERENCES [dbo].[input_orders_detail] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_lot_orders_detail_OrdersDetailId] FOREIGN KEY ([OrdersDetailId]) REFERENCES [dbo].[orders_detail] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_lot_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[products] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_lot_InputOrdersDetailId]
    ON [dbo].[lot]([InputOrdersDetailId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_lot_OrdersDetailId]
    ON [dbo].[lot]([OrdersDetailId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_lot_ProductId]
    ON [dbo].[lot]([ProductId] ASC);

