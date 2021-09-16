CREATE TABLE [dbo].[templates] (
    [Id]       INT             IDENTITY (1, 1) NOT NULL,
    [type]     INT             NOT NULL,
    [name]     NVARCHAR (100)  NOT NULL,
    [content]  NVARCHAR (1000) NOT NULL,
    [created]  DATETIME        NULL,
    [updated]  DATETIME        NULL,
    [user_upd] INT             NULL,
    CONSTRAINT [PK_templates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

