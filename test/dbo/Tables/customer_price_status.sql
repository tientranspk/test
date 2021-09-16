CREATE TABLE [dbo].[customer_price_status] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [status_name] NVARCHAR (45) NULL,
    CONSTRAINT [PK_customer_price_status] PRIMARY KEY CLUSTERED ([ID] ASC)
);

