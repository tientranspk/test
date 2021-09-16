CREATE TABLE [dbo].[CategoryClaims] (
    [Id]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [CategoryId]       INT              NOT NULL,
    [ProductsGroupsId] INT              DEFAULT ((0)) NOT NULL,
    [Type]             NVARCHAR (255)   NULL,
    [Value]            NVARCHAR (MAX)   NULL,
    [CreatedOn]        DATETIME2 (7)    NULL,
    [CreatedBy]        NVARCHAR (MAX)   NULL,
    [UpdatedOn]        DATETIME2 (7)    NULL,
    [UpdatedBy]        NVARCHAR (MAX)   NULL,
    [LastAccessed]     DATETIME2 (7)    NULL,
    [deleted]          INT              NULL,
    [IpAddress]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_CategoryClaims] PRIMARY KEY CLUSTERED ([Id] ASC)
);

