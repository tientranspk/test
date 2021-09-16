CREATE TABLE [dbo].[stores] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [stock_name] NVARCHAR (255) NOT NULL,
    [user_init]  INT            NULL,
    [user_upd]   INT            NULL,
    [created]    DATETIME       NULL,
    [updated]    DATETIME       NULL,
    CONSTRAINT [PK_stores] PRIMARY KEY CLUSTERED ([Id] ASC)
);

