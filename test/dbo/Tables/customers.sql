CREATE TABLE [dbo].[customers] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [customer_code]     NVARCHAR (100)   NULL,
    [customer_name]     NVARCHAR (255)   NULL,
    [customer_field_id] INT              NULL,
    [customer_sttkh_id] INT              NULL,
    [customer_contact]  NVARCHAR (45)    NULL,
    [customer_addr]     NVARCHAR (255)   NULL,
    [image]             NVARCHAR (500)   NULL,
    [created]           DATETIME         NULL,
    [updated]           DATETIME         NULL,
    [user_init]         INT              NULL,
    [user_upd]          INT              NULL,
    [deleted]           INT              NULL,
    [SourcingStaff]     NVARCHAR (200)   NULL,
    [SaleStaff]         NVARCHAR (200)   NULL,
    [Capacity]          DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [MisaCode]          NVARCHAR (MAX)   NULL,
    [MisaName]          NVARCHAR (MAX)   NULL,
    [Branch]            NVARCHAR (MAX)   NULL,
    [Tax_Code]          NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_Customer] PRIMARY KEY CLUSTERED ([Id] ASC)
);

