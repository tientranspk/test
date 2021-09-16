CREATE TABLE [dbo].[products_manufacture] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [prd_manuf_name] NVARCHAR (255) NOT NULL,
    [created]        DATETIME       NOT NULL,
    [updated]        DATETIME       NOT NULL,
    [user_init]      INT            NOT NULL,
    [user_upd]       INT            NOT NULL,
    CONSTRAINT [PK_products_manufacture] PRIMARY KEY CLUSTERED ([Id] ASC)
);

