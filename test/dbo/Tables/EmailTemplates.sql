CREATE TABLE [dbo].[EmailTemplates] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (MAX)   NULL,
    [Description]  NVARCHAR (MAX)   NULL,
    [Subject]      NVARCHAR (MAX)   NULL,
    [Body]         NVARCHAR (MAX)   NULL,
    [Instruction]  NVARCHAR (MAX)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [Deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_EmailTemplates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

