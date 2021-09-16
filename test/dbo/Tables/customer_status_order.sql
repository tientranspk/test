CREATE TABLE [dbo].[customer_status_order] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [status_name] NVARCHAR (45) NULL,
    CONSTRAINT [PK_customer_status_order] PRIMARY KEY CLUSTERED ([ID] ASC)
);

