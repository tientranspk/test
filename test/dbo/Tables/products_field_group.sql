CREATE TABLE [dbo].[products_field_group] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [pro_group]    NVARCHAR (200) NULL,
    [prd_field_id] NVARCHAR (45)  NULL,
    [values]       INT            NULL,
    CONSTRAINT [PK_products_field_group] PRIMARY KEY CLUSTERED ([Id] ASC)
);

