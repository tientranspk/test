
CREATE PROCEDURE [dbo].[GetProcessPlainingOrders]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
declare @orders_detail TABLE (
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[UnitConvertId] [uniqueidentifier] NULL,
	[OrderId] [uniqueidentifier] NULL,	
	[so_sp_id] [nvarchar](200) NULL,
	[so_id] [nvarchar](200) NULL,
	[product_name] [nvarchar](200) NULL,
	[product_unit] [nvarchar](200) NULL,
	[ID_Unit] [nvarchar](200) NULL,
	[orders_status] [nvarchar](45) NULL,
	[orders_status_2] [nvarchar](45) NULL,
	[customer_name] [nvarchar](200) NULL,
	[ex_delivery_date] [date] NULL,
	[ex_delivery_new_date] [date] NULL,
	[orders_date] [datetime] NULL,
	[inventory_units] [nvarchar](45) NULL,
	[notes] [nvarchar](1000) NULL,
	[qc_package] [nvarchar](1000) NULL,
	[delivery_info] [nvarchar](100) NULL,
	[reality_delivery_date] [date] NULL,	
	[lot_status] [nvarchar](50) NULL,
	[temp_sls] [decimal](18, 2) NULL,	
	[lot_type] [nvarchar](100) NULL,
	[product_sls] [decimal](18, 10) NOT NULL,
	[Unit_convert] [decimal](18, 10) NOT NULL,
	[product_price] [decimal](18, 5) NOT NULL,
	[product_amount] [decimal](18, 0) NOT NULL,
	[reality_sls] [decimal](18, 0) NOT NULL,
	[inventory_sls] [decimal](18, 0) NOT NULL,
	[reality_order_sls] [decimal](18, 0) NOT NULL,
	[CreatedOn] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[LastAccessed] [datetime2](7) NULL,
	[deleted] [int] NULL,
	[IpAddress] [nvarchar](200) NULL,
	[SourcingName] [nvarchar](200) NULL,
	[SaleName] [nvarchar](200) NULL,
	[InventoryStatus] [nvarchar](200) NULL,
	RealityProcess [nvarchar](100) NULL,
	ProcessPercentage [nvarchar](100) NULL,
	PlanProcess [nvarchar](100) NULL,
	TimeRemaining [nvarchar](100) NULL,
	CompleteStatus [nvarchar](100) NULL,
	ExBuyDeliveryDate datetime2 NULL)
declare @productId NVARCHAR(250), @Id NVARCHAR(150), @orderId NVARCHAR(150),@ordersDate  datetime
,@orderStatus NVARCHAR(150),@exDeliveryDate datetime,@realityDeliveryDate datetime, @buyExDeliveryDate datetime,@buyDeliveryStatus NVARCHAR(100);
declare @inverntoryStatus nvarchar(100),@realityProcess nvarchar(100), @processPercentage nvarchar(50), @planProcess  nvarchar(100),
@timeRemaining int, @completeStatus nvarchar(100);
declare tmp_cursor CURSOR FOR  
SELECT Id,ProductId,orders_status,reality_delivery_date,ex_delivery_date,CreatedOn FROM orders_detail --,orders_date FROM orders_detail 
DECLARE @cnt INT = 1;
OPEN tmp_cursor;  
FETCH NEXT FROM tmp_cursor
  INTO  @Id,@productId,@orderStatus,@realityDeliveryDate,@exDeliveryDate,@ordersDate; 
-- Check @@FETCH_STATUS to see if there are any more rows to fetch.  
WHILE @@FETCH_STATUS = 0  
BEGIN  
    begin
      set @buyDeliveryStatus = (select top 1 delivery_status_2 from input_orders_detail 
	  where id in( select InputOrdersDetailId from lot where OrdersDetailId =@Id and ProductId = @productId) and deleted=0 order by CreatedOn desc)
	  set @buyExDeliveryDate = (select top 1 ex_delivery_date_buy from lot where OrdersDetailId =@Id and ProductId=@productId and deleted=0 )
      if(@orderStatus=N'Đã giao')
	   begin	
	    set @inverntoryStatus = N'Đã xuất' ; set @timeRemaining =0;	set @completeStatus = N'Đã hoàn thành'; -- set @planProcess =N'Đúng hạn'; set @realityProcess =N'Đúng hạn'
		--if(((@exDeliveryDate>@realityDeliveryDate)) and (@orderStatus=N'Đã giao'))
		--begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end
		----if(((DATEDIFF(DAY,@exDeliveryDate,@realityDeliveryDate)) >= 0) and (@orderStatus!=N'Đã giao')) set @planProcess = N'Dự kiến Đúng hạn- Đúng hạn';
		--if((@exDeliveryDate<@realityDeliveryDate) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Trễ'; set @processPercentage='0%' ; set @planProcess = N'Trễ'; end--set @planProcess =N'Trễ';
	
		if((@exDeliveryDate=ISNULL(@realityDeliveryDate,@exDeliveryDate)) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end		
	--		if((@realityDeliveryDate is null) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end	
	--	if((GETDATE()<@exDeliveryDate) and (@realityDeliveryDate is null) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end	
	-- if((DATEDIFF(DAY,@exDeliveryDate, @realityDeliveryDate))>=0 and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end		
	   if((@exDeliveryDate>= @realityDeliveryDate) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Đúng hạn'; set @processPercentage='100%'; set @planProcess = N'Đúng hạn'; end		
	   else if((@exDeliveryDate<@realityDeliveryDate) and (@orderStatus=N'Đã giao')) begin  set @realityProcess =N'Trễ'; set @processPercentage='0%' ; set @planProcess = N'Trễ'; end--set @planProces
	  end	
	 else 
	   begin	    
		set @timeRemaining  = DATEDIFF(DAY,GETDATE(),@exDeliveryDate); set @completeStatus = N'Chưa hoàn thành';		
		set @inverntoryStatus = N'Chưa đặt hàng'; set @planProcess =N'Dự kiến Đúng hạn - An toàn';
		if((GETDATE()<@exDeliveryDate) and (@orderStatus=N'Giao dở dang'))begin set @realityProcess =N'Chưa xác định'; set @processPercentage='' end;
		if((DATEDIFF(DAY,GETDATE(), DATEADD(day, 1, @ordersDate)) >= 0) and (@orderStatus!=N'Đã giao'))  set @planProcess = N'Đơn hàng mới';	
		--if((DATEDIFF(DAY,GETDATE(),@ordersDate) <2) and (@orderStatus!=N'Đã giao'))  set @planProcess = N'Đơn hàng mới';
		if(((@buyDeliveryStatus is null) and (@buyExDeliveryDate is null) and  (@orderStatus!=N'Đã giao')))
		begin  set @inverntoryStatus=N'Chưa đặt hàng'; set @planProcess = N'Chưa xác định'; end
		else if(((@buyDeliveryStatus is null) and (@buyExDeliveryDate is not null) and  (@orderStatus!=N'Đã giao'))) 
		begin
		set @inverntoryStatus=N'Trong kho'; 		
		  if(@buyExDeliveryDate>@exDeliveryDate  and (@orderStatus!=N'Đã giao')and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - An toàn';
		  if((DATEDIFF(DAY,@buyExDeliveryDate,@exDeliveryDate) = 0) and (@orderStatus!=N'Đã giao') and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - Cận ngày';
		  if(@buyExDeliveryDate<@exDeliveryDate and (@orderStatus!=N'Đã giao') or (GETDATE()>@exDeliveryDate))  set @planProcess = N'Trễ';
		--  if((@orderStatus=N'Giao dở dang') and (GETDATE()>@exDeliveryDate)) set @planProcess = N'Trễ';
		end
		if((@buyDeliveryStatus is not null) and (@buyDeliveryStatus=N'Incoming') and (@orderStatus!=N'Đã giao'))begin set @inverntoryStatus=N'Đã đặt - chưa về kho'; end
		if((@buyDeliveryStatus is not null) and (@buyDeliveryStatus=N'Đã giao' ) and  (@orderStatus!=N'Đã giao'))
		begin
		set @inverntoryStatus=N'Trong kho'; 		
		  if(@buyExDeliveryDate>@exDeliveryDate  and (@orderStatus!=N'Đã giao') and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - An toàn';
		  if((DATEDIFF(DAY,@buyExDeliveryDate,@exDeliveryDate) = 0) and (@orderStatus!=N'Đã giao') and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - Cận ngày';
		  if((@buyExDeliveryDate>@exDeliveryDate and (@orderStatus!=N'Đã giao') or (GETDATE()>@exDeliveryDate)))  set @planProcess = N'Trễ';
		--  if((@orderStatus=N'Giao dở dang') and (GETDATE()>@exDeliveryDate))  set @planProcess = N'Trễ';
		end
		if((@realityDeliveryDate is null)and (@orderStatus!=N'Đã giao')) begin 
		set @realityProcess =N'Chưa xác định'; set @processPercentage='';
		  if((DATEDIFF(DAY,Getdate(),@exDeliveryDate)) < -2   and (@orderStatus!=N'Đã giao'))  begin set @realityProcess =N'Trễ';
		  set @planProcess = N'Trễ';set @processPercentage='0%'; end;
		end;	 
		else --if(@realityDeliveryDate is not null)		
		   begin	
		  if(Getdate()>@exDeliveryDate and (@orderStatus!=N'Đã giao')) begin set @realityProcess =N'Chưa xác định'; set @processPercentage=''; end ;
		  if(Getdate()>@exDeliveryDate and (@orderStatus!=N'Đã giao')) begin set @realityProcess =N'Trễ'; set @processPercentage='0%'; end ; 		 
		--  if(((@buyDeliveryStatus is null) and (@buyExDeliveryDate is null) and  (@orderStatus!=N'Đã giao')))  set @inverntoryStatus=N'Chưa đặt hàng';	
		  if(@buyExDeliveryDate<@exDeliveryDate and (@orderStatus!=N'Đã giao') and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - An toàn';
		  if((DATEDIFF(DAY,@buyExDeliveryDate,@exDeliveryDate) = 0) and (@orderStatus!=N'Đã giao') and (GETDATE()<@exDeliveryDate))  set @planProcess = N'Dự kiến Đúng hạn - Cận ngày';
		  if((@buyExDeliveryDate<@exDeliveryDate and (@orderStatus!=N'Đã giao') or (GETDATE()<@exDeliveryDate)))  set @planProcess = N'Trễ';
		  if((@buyExDeliveryDate<@exDeliveryDate and (@orderStatus!=N'Giao dở dang') and (GETDATE()<@exDeliveryDate)))  set @planProcess = N'Trễ';
		  end
		
	   end
	end
 insert into @orders_detail(
       [Id]
      ,[ProductId]
      ,[UnitConvertId]
      ,[OrderId]    
      ,[so_sp_id]
      ,[so_id]
      ,[product_name]
      ,[product_unit]
      ,[ID_Unit]
      ,[orders_status]
      ,[orders_status_2]
      ,[customer_name]
      ,[ex_delivery_date]
      ,[ex_delivery_new_date]
      ,[orders_date]
      ,[inventory_units]
      ,[notes]
      ,[qc_package]
      ,[delivery_info]
      ,[reality_delivery_date]      
      ,[lot_status]
      ,[temp_sls]     
      ,[lot_type]
      ,[product_sls]
      ,[Unit_convert]
      ,[product_price]
      ,[product_amount]
      ,[reality_sls]
      ,[inventory_sls]
      ,[reality_order_sls]     
      ,[CreatedOn]
      ,[CreatedBy]
      ,[UpdatedOn]
      ,[UpdatedBy]
      ,[LastAccessed]
      ,[deleted]
      ,[IpAddress],
	  SourcingName,
	  SaleName,
	  InventoryStatus,
	  RealityProcess,
	  ProcessPercentage,
	  PlanProcess,
	  TimeRemaining,
	  CompleteStatus,
	  ExBuyDeliveryDate)
select od.[Id]
      ,[ProductId]
      ,[UnitConvertId]
      ,[OrderId]    
      ,[so_sp_id]
      ,od.[so_id]
      ,[product_name]
      ,[product_unit]
      ,[ID_Unit]
      ,[orders_status]
      ,[orders_status_2]
      ,od.[customer_name]
      ,od.[ex_delivery_date]
      ,[ex_delivery_new_date]
      ,[orders_date]
      ,[inventory_units]
      ,od.[notes]
      ,[qc_package]
      ,[delivery_info]
      ,od.[reality_delivery_date]    
      ,od.[lot_status]
      ,[temp_sls]      
      ,[lot_type]
      ,[product_sls]
      ,[Unit_convert]
      ,[product_price]
      ,[product_amount]
      ,[reality_sls]
      ,(0-[inventory_sls]) as [inventory_sls]
      ,[reality_order_sls]     
      ,od.[CreatedOn]
      ,od.[CreatedBy]
      ,od.[UpdatedOn]
      ,od.[UpdatedBy]
      ,od.[LastAccessed]
     ,od.[deleted]
      ,od.[IpAddress],
	  od.SourcingName,
	  o.sales_name,
	  @inverntoryStatus,
	  @realityProcess,
	  @processPercentage,
	  @planProcess,
	  @timeRemaining,
	  @completeStatus,
	  @buyExDeliveryDate	  
	  from orders_detail od inner join 
	  orders o on od.OrderId =o.Id
	  where od.Id = @Id and od.deleted=0
   SET @cnt = @cnt + 1;
   FETCH NEXT FROM tmp_cursor
    INTO @Id,@productId,@orderStatus,@realityDeliveryDate,@exDeliveryDate,@ordersDate;  
END  
CLOSE tmp_cursor;  
DEALLOCATE tmp_cursor;  
select  
MONTH(ex_delivery_date) as [Month],datepart(week, ex_delivery_date) as [Week],(product_sls-reality_order_sls) as [Total],* from  @orders_detail
END
