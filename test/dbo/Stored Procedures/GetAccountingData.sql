
CREATE PROCEDURE [dbo].[GetAccountingData] 

AS
BEGIN

select tb.customer_name,tb.product_name,tb.so_id,(ts.reality_order_sls*tb.product_price) as product_amount, tb.product_unit
,ts.reality_delivery_date,
ts.reality_order_sls as reality_order_sls ,tb.product_price,
case when tb.vat=N'Có VAT' then cast((ts.reality_order_sls * tb.product_price)*10/100 as decimal(18,0))
else 0 end as vat_price,
case when tb.vat=N'Có VAT' then cast( (ts.reality_order_sls * tb.product_price)+(ts.reality_order_sls * tb.product_price)*10/100 as decimal(18,0))
else (ts.reality_order_sls * tb.product_price) end as TotalPrice
from 
( select od.OrderId,od.so_id,od.product_name,o.customer_name,o.InvoiceType,
od.product_unit,od.product_amount,od.product_price,o.vat from orders_detail od
inner join orders o on o.Id = od.OrderId where o.status_order_1  !=N'Chưa Giao' and od.deleted=0
and (o.InvoiceType is null or o.InvoiceType =N'Bổ sung')
--and o.so_id=N'Thịnh Phú_ĐH Mexico lsx178_06-01-2021'
) tb
inner join transaction_io_order ts on tb.OrderId = ts.OrderId 
and tb.product_name =ts.prd_code 
and ts.prd_order_unit= tb.product_unit and ts.transaction_type=N'Xuất kho'

--where tb.so_id=N'Thịnh Phú_ĐH Mexico lsx178_06-01-2021'
group by ts.reality_order_sls 
,ts.reality_delivery_date
,tb.product_price
,tb.customer_name
,tb.so_id
,tb.product_name
,tb.product_unit
,tb.vat
END

--select * from transaction_io_order where OrderCode=N'Công Ty ECO_ĐƠN HÀNG XƯỞNG GỖ XI 72H PO 062_5/22/2021 12:00:00 AM'

--select * from orders_detail where deleted=1 

--select * from orders  where vat='0'

