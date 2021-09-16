CREATE TABLE [dbo].[ProductClaims] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ProductId]    UNIQUEIDENTIFIER NULL,
    [Name]         NVARCHAR (255)   NULL,
    [Type]         NVARCHAR (255)   NULL,
    [Value]        NVARCHAR (MAX)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_ProductClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductClaims_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[products] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductClaims_ProductId]
    ON [dbo].[ProductClaims]([ProductId] ASC);

