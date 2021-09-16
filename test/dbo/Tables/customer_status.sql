CREATE TABLE [dbo].[customer_status] (
    [customer_status_id]   INT           IDENTITY (1, 1) NOT NULL,
    [customer_status_name] NVARCHAR (45) NULL,
    [class]                NVARCHAR (45) NULL,
    CONSTRAINT [PK_customer_status] PRIMARY KEY CLUSTERED ([customer_status_id] ASC)
);

