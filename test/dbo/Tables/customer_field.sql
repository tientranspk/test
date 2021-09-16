CREATE TABLE [dbo].[customer_field] (
    [customer_field_id]   INT           IDENTITY (1, 1) NOT NULL,
    [customer_field_name] NVARCHAR (45) NULL,
    CONSTRAINT [PK_customer_field] PRIMARY KEY CLUSTERED ([customer_field_id] ASC)
);

