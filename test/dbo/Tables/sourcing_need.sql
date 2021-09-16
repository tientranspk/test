CREATE TABLE [dbo].[sourcing_need] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [prd_name]      NVARCHAR (200) NULL,
    [prd_image]     NVARCHAR (200) NULL,
    [value_ex]      NVARCHAR (MAX) NULL,
    [source_status] NVARCHAR (45)  NULL,
    [priority]      NVARCHAR (45)  NULL,
    [follow_person] NVARCHAR (45)  NULL,
    [supplier_need] NVARCHAR (45)  NULL,
    [supplier_name] NVARCHAR (45)  NULL,
    [source_update] NVARCHAR (200) NULL,
    [created]       DATETIME       NULL,
    [updated]       DATETIME       NULL,
    [user_init]     INT            NULL,
    [user_upd]      INT            NULL,
    [deleted]       INT            NOT NULL,
    CONSTRAINT [PK_sourcing_need] PRIMARY KEY CLUSTERED ([Id] ASC)
);

