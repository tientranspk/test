CREATE TABLE [dbo].[Employees] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [FirstName]    NVARCHAR (250)   NULL,
    [LastName]     NVARCHAR (250)   NULL,
    [FullName]     NVARCHAR (250)   NULL,
    [PhoneNumber]  NVARCHAR (250)   NULL,
    [Email]        NVARCHAR (250)   NULL,
    [Address]      NVARCHAR (MAX)   NULL,
    [UserId]       UNIQUEIDENTIFIER NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [Deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([Id] ASC)
);

