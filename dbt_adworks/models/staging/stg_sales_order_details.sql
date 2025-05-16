select
	salesorderid as sales_order_id,
	salesorderdetailid as sales_order_detail_id,
	productid as product_id,
	orderqty as order_qty,
	unitprice as unit_price,
	modifieddate as modified_date
from {{ ref("sales__sales_order_details") }}