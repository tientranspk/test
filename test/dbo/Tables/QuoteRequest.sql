CREATE TABLE [dbo].[QuoteRequest] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [QuoteId]      UNIQUEIDENTIFIER NULL,
    [Status]       INT              NOT NULL,
    [ViewBy]       NVARCHAR (MAX)   NULL,
    [RequestName]  NVARCHAR (250)   NULL,
    [RequestValue] NVARCHAR (MAX)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_QuoteRequest] PRIMARY KEY CLUSTERED ([Id] ASC)
);

