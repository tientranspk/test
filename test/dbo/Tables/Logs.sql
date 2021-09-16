CREATE TABLE [dbo].[Logs] (
    [Id]        UNIQUEIDENTIFIER NOT NULL,
    [Message]   NVARCHAR (MAX)   NULL,
    [Level]     NVARCHAR (MAX)   NULL,
    [TimeStamp] DATETIME2 (7)    NULL,
    [Exception] NVARCHAR (MAX)   NULL,
    [LogEvent]  NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED ([Id] ASC)
);

