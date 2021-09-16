CREATE TABLE [dbo].[Domains] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Domains] PRIMARY KEY CLUSTERED ([Id] ASC)
);

