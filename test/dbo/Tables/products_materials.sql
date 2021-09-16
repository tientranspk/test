CREATE TABLE [dbo].[products_materials] (
    [materials_id]   INT            IDENTITY (1, 1) NOT NULL,
    [materials_name] NVARCHAR (200) NULL,
    CONSTRAINT [PK_products_materials] PRIMARY KEY CLUSTERED ([materials_id] ASC)
);

