CREATE TABLE [dbo].[PackageInStock] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [PackageId]    UNIQUEIDENTIFIER NULL,
    [InputId]      UNIQUEIDENTIFIER NULL,
    [OrderId]      UNIQUEIDENTIFIER NULL,
    [Status]       NVARCHAR (MAX)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    [InStock]      INT              DEFAULT ((0)) NOT NULL,
    [OutStock]     INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [pk_PackageInStock] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PackageInStock_Packages_PackageId] FOREIGN KEY ([PackageId]) REFERENCES [dbo].[Packages] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PackageInStock_PackageId]
    ON [dbo].[PackageInStock]([PackageId] ASC);

