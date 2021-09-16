CREATE TABLE [dbo].[suppliers_status] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [status_name] NVARCHAR (45) NULL,
    [status_by]   INT           NULL,
    [status_des]  NVARCHAR (45) NULL,
    CONSTRAINT [PK_suppliers_status] PRIMARY KEY CLUSTERED ([Id] ASC)
);

