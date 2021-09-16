CREATE TABLE [dbo].[sales] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [sales_name] NVARCHAR (45) NULL,
    [user_init]  INT           NULL,
    [user_upd]   INT           NULL,
    [actived]    SMALLINT      NULL,
    [created]    DATETIME      NULL,
    [updated]    DATETIME      NULL,
    [deleted]    SMALLINT      NULL,
    CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED ([Id] ASC)
);

