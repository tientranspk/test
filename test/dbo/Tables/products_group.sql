CREATE TABLE [dbo].[products_group] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [prd_group_name]  NVARCHAR (255)  NOT NULL,
    [id_group_web]    INT             NOT NULL,
    [parentid]        INT             NOT NULL,
    [level]           SMALLINT        NOT NULL,
    [lft]             INT             NULL,
    [rgt]             INT             NULL,
    [image]           NVARCHAR (200)  NULL,
    [created]         DATETIME        NULL,
    [updated]         DATETIME        NULL,
    [user_init]       SMALLINT        NULL,
    [user_upd]        SMALLINT        NULL,
    [group_name]      NVARCHAR (200)  NULL,
    [unit_standard]   NVARCHAR (200)  NULL,
    [CapacityPackage] DECIMAL (18, 2) DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [PK_products_group] PRIMARY KEY CLUSTERED ([Id] ASC)
);

