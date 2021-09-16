CREATE TABLE [dbo].[products_field] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [field_name] NVARCHAR (45) NULL,
    CONSTRAINT [PK_products_field] PRIMARY KEY CLUSTERED ([Id] ASC)
);

