CREATE TABLE [dbo].[TemporaryData] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (MAX)   NULL,
    [ActionType]   NVARCHAR (255)   NULL,
    [Value]        NVARCHAR (MAX)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    [ApproveBy]    NVARCHAR (200)   NULL,
    [ApproveOn]    DATETIME2 (7)    NULL,
    [ViewsBy]      NVARCHAR (MAX)   NULL,
    [IsZaloSend]   BIT              DEFAULT (CONVERT([bit],(0))) NOT NULL,
    CONSTRAINT [PK_TemporaryData] PRIMARY KEY CLUSTERED ([Id] ASC)
);

