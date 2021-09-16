create proc [dbo].[GetProductForSupplyChains] as
begin

declare @tmp table(
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[UnitConvertId] [uniqueidentifier] NULL,
	[OrderId] [uniqueidentifier] NULL,	
	[so_id] [nvarchar](200) NULL,
	[product_name] [nvarchar](200) NULL,
	[product_unit] [nvarchar](200) NULL,	
	[orders_status] [nvarchar](45) NULL,
	[orders_status_2] [nvarchar](45) NULL,
	[customer_name] [nvarchar](200) NULL,
	[ex_delivery_date] [date] NULL,
	[ex_delivery_new_date] [date] NULL,
	[orders_date] [datetime] NULL,
	[inventory_units] [nvarchar](45) NULL,
	[notes] [nvarchar](2000) NULL,
	[qc_package] [nvarchar](1000) NULL,
	[delivery_info] [nvarchar](100) NULL,
	[reality_delivery_date] [date] NULL,	
	[lot_type] [nvarchar](100) NULL,
	[product_sls] [decimal](18, 10) NOT NULL,
	[Unit_convert] [decimal](18, 10) NOT NULL,
	[product_price] [decimal](18, 5) NOT NULL,
	[product_amount] [decimal](18, 2) NOT NULL,
	[reality_sls] [decimal](18, 2) NOT NULL,
	[inventory_sls] [decimal](18, 2) NOT NULL,
	[reality_order_sls] [decimal](18, 2) NOT NULL,
	[InvoiceUnit] [nvarchar](200) NULL,
	[SupplierName] [nvarchar](200) NULL,
		[bo_id] [nvarchar](200) NULL,
		Rating decimal(18,2)
);

DECLARE @PrdCode NVARCHAR(250), @Id NVARCHAR(150);  
DECLARE contact_cursor CURSOR FOR  
SELECT Id,prd_code FROM products 
DECLARE @cnt INT = 1;
OPEN contact_cursor;  
 
-- Perform the first fetch.  
FETCH NEXT FROM contact_cursor
  INTO  @Id,@PrdCode; 
-- Check @@FETCH_STATUS to see if there are any more rows to fetch.  
WHILE @@FETCH_STATUS = 0  
BEGIN  
insert into @tmp(
    [Id],
	[ProductId],
	[UnitConvertId] ,
	[OrderId],	
	[so_id],	
	[product_name] ,
	[product_unit],	
	[orders_status] ,
	[orders_status_2] ,
	[customer_name] ,
	[ex_delivery_date],
	[ex_delivery_new_date] ,
	[orders_date],
	[inventory_units],
	[reality_delivery_date],	
	[lot_type] ,
	[product_sls],
	[Unit_convert] ,
	[product_price] ,
	[product_amount] ,
	[reality_sls] ,
	[inventory_sls],
	[reality_order_sls] ,
	[InvoiceUnit] ,
	[SupplierName] ,
	bo_id,
	Rating
	
)
select 
    od.[Id],
	od.[ProductId],
	od.[UnitConvertId] ,
	od.[OrderId],	
	od.[so_id],
	od.[product_name] ,
	od.[product_unit],	
	od.[orders_status] ,
	od.[orders_status_2] ,
	od.[customer_name] ,
	od.[ex_delivery_date],
	od.[ex_delivery_new_date] ,
	od.[orders_date],
	od.[inventory_units],
	od.[reality_delivery_date],	
	od.[lot_type] ,
	od.[product_sls],
	od.[Unit_convert] ,
	od.[product_price] ,
	od.[product_amount] ,
	od.[reality_sls] ,
	od.[inventory_sls],
	od.[reality_order_sls] ,
	od.[InvoiceUnit] ,
	i.supplier_name ,
	i.bo_id,
	CAST( s.ar_rating as decimal(18,2))
from lot l
inner join input_orders_detail i on i.Id = l.InputOrdersDetailId
inner join orders_detail od on od.Id = l.OrdersDetailId
inner join suppliers s on s.supplier_name = i.supplier_name
where prd_code = @PrdCode

   SET @cnt = @cnt + 1;
   FETCH NEXT FROM contact_cursor
    INTO @Id,@PrdCode; 
END  
  
CLOSE contact_cursor;  
DEALLOCATE contact_cursor;  
--select * from @tmp where Rating>3.5

--group by product_name  

select * from @tmp
end
