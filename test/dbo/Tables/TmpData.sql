CREATE TABLE [dbo].[TmpData] (
    [Id]           UNIQUEIDENTIFIER CONSTRAINT [DF_TmpData_Id] DEFAULT (newid()) NOT NULL,
    [CustomerName] NVARCHAR (250)   NULL,
    [Sourcing]     NVARCHAR (250)   NULL,
    CONSTRAINT [PK_TmpData] PRIMARY KEY CLUSTERED ([Id] ASC)
);

