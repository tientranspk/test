CREATE TABLE [dbo].[UndoWarehouses] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [InOutId]      UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (MAX)   NULL,
    [ActionType]   NVARCHAR (255)   NULL,
    [Value]        NVARCHAR (MAX)   NULL,
    [ViewsBy]      NVARCHAR (MAX)   NULL,
    [ApproveBy]    NVARCHAR (200)   NULL,
    [ApproveOn]    DATETIME2 (7)    NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_UndoWarehouses] PRIMARY KEY CLUSTERED ([Id] ASC)
);

