CREATE PROCEDURE [dbo].[GetCloudStock]
AS
BEGIN
declare @BuySales TABLE (
    [Id] [uniqueidentifier] NULL,
	[prd_sls] [decimal](18, 0) NOT NULL,
	[unit_convert] [decimal](18, 5) NOT NULL,
	[prd_sls_reality] [decimal](18, 2) NULL,
	[inventory_sls] [decimal](18, 2) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[InputId] [uniqueidentifier] NULL,
	[OrderId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[UnitConvertId] [uniqueidentifier] NULL,
	[prd_code] [nvarchar](200) NULL,
	[exp_delivery_date] [date] NULL,
	[order_status_2] [nvarchar](45) NULL,
	[order_status] [nvarchar](45) NULL,
	[order_date] [datetime] NULL,
	[partner] [nvarchar](200) NULL,
	[transaction_type] [nvarchar](45) NULL,
	[orders_date_sync] [datetime] NULL)
insert into @BuySales(
Id,prd_sls,unit_convert,prd_sls_reality,
inventory_sls,OrderCode,InputId,ProductId,
UnitConvertId,prd_code,exp_delivery_date,
order_status_2,order_status,order_date,
transaction_type,orders_date_sync,[partner]) 
select newid(),
product_sls,unit_convert,reality_sls,
inventory_sls,--REPLACE(REPLACE(bo_id,'_',' '),'na','') as
[bo_id]
,InputId,ProductId,
UnitConvertId,
--REPLACE(REPLACE(product_name,'_',' '),'na','') as
[product_name],ex_delivery_date,
delivery_status_2 ,delivery_status,input_date,
'Buy',input_date,[supplier_name]
from input_orders_detail where deleted=0
insert into @BuySales(Id,prd_sls,unit_convert,prd_sls_reality,
inventory_sls,OrderCode,OrderId,ProductId,
UnitConvertId,prd_code,exp_delivery_date,
order_status_2,order_status,order_date,
transaction_type,orders_date_sync,[partner]) 
select newid(),
product_sls,unit_convert,reality_sls,
inventory_sls,
--REPLACE(REPLACE(so_id,'_',' '),'na','') as 
[so_id],OrderId,ProductId,
UnitConvertId,
--REPLACE(REPLACE(product_name,'_',' '),'na','') as 
[product_name],ex_delivery_date,
orders_status_2 ,orders_status,orders_date,
'Sales',orders_date,[customer_name]
from orders_detail  where deleted=0
select * from @BuySales order by order_date desc
END
--select * from Packages order by CreatedOn desc