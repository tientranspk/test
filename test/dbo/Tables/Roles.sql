CREATE TABLE [dbo].[Roles] (
    [Id]               NVARCHAR (450) NOT NULL,
    [IsSystem]         BIT            NOT NULL,
    [Description]      NVARCHAR (MAX) NULL,
    [CreatedOn]        DATETIME2 (7)  NULL,
    [CreatedBy]        NVARCHAR (MAX) NULL,
    [UpdatedOn]        DATETIME2 (7)  NULL,
    [UpdatedBy]        NVARCHAR (MAX) NULL,
    [IpAddress]        NVARCHAR (MAX) NULL,
    [LastAccessed]     DATETIME2 (7)  NULL,
    [Deleted]          INT            NULL,
    [Name]             NVARCHAR (256) NULL,
    [NormalizedName]   NVARCHAR (256) NULL,
    [ConcurrencyStamp] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
    ON [dbo].[Roles]([NormalizedName] ASC) WHERE ([NormalizedName] IS NOT NULL);

