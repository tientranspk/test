CREATE TABLE [dbo].[unit_conversion] (
    [Id]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [OdlId]            INT              NOT NULL,
    [ID_Unit]          NVARCHAR (200)   NULL,
    [prd_code]         NVARCHAR (200)   NULL,
    [ProductId]        UNIQUEIDENTIFIER NULL,
    [unit_change]      INT              NULL,
    [UnitChangeName]   NVARCHAR (MAX)   NULL,
    [unit_standard]    INT              NULL,
    [UnitStandardName] NVARCHAR (MAX)   NULL,
    [value_change]     DECIMAL (18, 14) DEFAULT ((1)) NOT NULL,
    [user_init]        NVARCHAR (45)    NULL,
    [user_upd]         NVARCHAR (45)    NULL,
    [created]          DATETIME         NULL,
    [updated]          DATETIME         NULL,
    [OldValueChange]   NVARCHAR (MAX)   NULL,
    [CreatedOn]        DATETIME2 (7)    NULL,
    [CreatedBy]        NVARCHAR (MAX)   NULL,
    [UpdatedOn]        DATETIME2 (7)    NULL,
    [UpdatedBy]        NVARCHAR (MAX)   NULL,
    [LastAccessed]     DATETIME2 (7)    NULL,
    [deleted]          INT              NULL,
    [IpAddress]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_UnitConversion] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_unit_conversion_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[products] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_unit_conversion_ProductId]
    ON [dbo].[unit_conversion]([ProductId] ASC);

