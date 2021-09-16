CREATE TABLE [dbo].[quotes_detail] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [QuoteId]      UNIQUEIDENTIFIER NULL,
    [quotes_code]  NVARCHAR (250)   NULL,
    [prd_id]       NVARCHAR (200)   NULL,
    [prd_name]     NVARCHAR (200)   NULL,
    [prd_types]    NVARCHAR (45)    NULL,
    [prd_unit]     NVARCHAR (50)    NULL,
    [prd_material] NVARCHAR (200)   NULL,
    [prd_price]    NVARCHAR (200)   NULL,
    [prd_sls]      NVARCHAR (45)    NULL,
    [prd_amount]   NVARCHAR (45)    NULL,
    [image]        NVARCHAR (200)   NULL,
    [CreatedOn]    DATETIME2 (7)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedOn]    DATETIME2 (7)    NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [LastAccessed] DATETIME2 (7)    NULL,
    [deleted]      INT              NULL,
    [IpAddress]    NVARCHAR (MAX)   NULL,
    [Description]  NVARCHAR (MAX)   NULL,
    [PrdCode]      NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_QuotesDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_quotes_detail_quotes_QuoteId] FOREIGN KEY ([QuoteId]) REFERENCES [dbo].[quotes] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_quotes_detail_QuoteId]
    ON [dbo].[quotes_detail]([QuoteId] ASC);

