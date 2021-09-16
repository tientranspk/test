CREATE TABLE [dbo].[products_unit] (
    [Id]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Units_ID]      INT              NOT NULL,
    [Units_name]    NVARCHAR (45)    NULL,
    [Units_actived] SMALLINT         NULL,
    [Units_status]  SMALLINT         NULL,
    [MisaCode]      NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_ProductsUnit] PRIMARY KEY CLUSTERED ([Id] ASC)
);

