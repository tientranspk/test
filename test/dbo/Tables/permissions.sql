CREATE TABLE [dbo].[permissions] (
    [id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [permission_url]  NVARCHAR (255) NOT NULL,
    [permission_name] NVARCHAR (150) NOT NULL,
    CONSTRAINT [PK_permissions] PRIMARY KEY CLUSTERED ([id] ASC)
);

