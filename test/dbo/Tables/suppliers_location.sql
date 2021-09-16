CREATE TABLE [dbo].[suppliers_location] (
    [supplier_location_id]   INT           IDENTITY (1, 1) NOT NULL,
    [supplier_location_name] NVARCHAR (45) NULL,
    CONSTRAINT [PK_suppliers_location] PRIMARY KEY CLUSTERED ([supplier_location_id] ASC)
);

