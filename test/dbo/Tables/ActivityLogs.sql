CREATE TABLE [dbo].[ActivityLogs] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserName]          NVARCHAR (250)   NULL,
    [LogType]           NVARCHAR (200)   NULL,
    [LogName]           NVARCHAR (200)   NULL,
    [BeforeChangeValue] NVARCHAR (MAX)   NULL,
    [AfterChangeValue]  NVARCHAR (MAX)   NULL,
    [CreatedOn]         DATETIME2 (7)    NULL,
    CONSTRAINT [pk_ActivityLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

