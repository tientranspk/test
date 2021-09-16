CREATE TABLE [dbo].[suppliers_offer_detail] (
    [Id]          UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [offer_id]    INT              NOT NULL,
    [sup_name]    NVARCHAR (500)   NULL,
    [pro_name]    NVARCHAR (200)   NULL,
    [pro_price]   NVARCHAR (200)   NULL,
    [pro_unit]    NVARCHAR (45)    NULL,
    [pro_quality] NVARCHAR (45)    NULL,
    [offer_date]  DATETIME         NULL,
    [upload_stt]  NVARCHAR (45)    NULL,
    CONSTRAINT [pk_SuppliersOfferDetail] PRIMARY KEY CLUSTERED ([Id] ASC)
);

