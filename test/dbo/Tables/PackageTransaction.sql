CREATE TABLE [dbo].[PackageTransaction] (
    [Id]              UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TransactionId]   UNIQUEIDENTIFIER NULL,
    [TransactionType] NVARCHAR (MAX)   NULL,
    [CreatedOn]       DATETIME2 (7)    NULL,
    [CreatedBy]       NVARCHAR (MAX)   NULL,
    [UpdatedOn]       DATETIME2 (7)    NULL,
    [UpdatedBy]       NVARCHAR (MAX)   NULL,
    [LastAccessed]    DATETIME2 (7)    NULL,
    [deleted]         INT              NULL,
    [IpAddress]       NVARCHAR (MAX)   NULL,
    [Checker]         NVARCHAR (MAX)   NULL,
    [Deliverer]       NVARCHAR (MAX)   NULL,
    [PackageId]       UNIQUEIDENTIFIER NULL,
    [Receiver]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_PackageTransaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PackageTransaction_Packages_PackageId] FOREIGN KEY ([PackageId]) REFERENCES [dbo].[Packages] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PackageTransaction_PackageId]
    ON [dbo].[PackageTransaction]([PackageId] ASC);

