CREATE TABLE [dbo].[orders_status] (
    [orders_status_id]   INT           IDENTITY (1, 1) NOT NULL,
    [orders_status_name] NVARCHAR (45) NULL,
    [class]              NVARCHAR (45) NULL,
    CONSTRAINT [PK_orders_status] PRIMARY KEY CLUSTERED ([orders_status_id] ASC)
);

