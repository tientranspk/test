CREATE TABLE [dbo].[products_staple] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [products_staple_name] NVARCHAR (200) NULL,
    CONSTRAINT [PK_products_staple] PRIMARY KEY CLUSTERED ([Id] ASC)
);

