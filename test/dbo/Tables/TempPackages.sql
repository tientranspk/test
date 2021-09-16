CREATE TABLE [dbo].[TempPackages] (
    [Name]              NVARCHAR (255)   NULL,
    [StockInName]       NVARCHAR (255)   NULL,
    [ProductName]       NVARCHAR (255)   NULL,
    [SupplierName]      NVARCHAR (255)   NULL,
    [InventoryUnitName] NVARCHAR (255)   NULL,
    [InventorySls]      FLOAT (53)       NULL,
    [ConvertUnitName]   NVARCHAR (255)   NULL,
    [ConvertSls]        FLOAT (53)       NULL,
    [QcPackages]        NVARCHAR (255)   NULL,
    [SupplierId]        UNIQUEIDENTIFIER NULL,
    [StockInId]         UNIQUEIDENTIFIER NULL,
    [ProductId]         UNIQUEIDENTIFIER NULL
);

