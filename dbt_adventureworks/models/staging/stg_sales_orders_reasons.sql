SELECT 
	salesorderid as sales_order_id, 
	salesreasonid as sales_reason_id
FROM {{ ref('sales_order_header_sales_reason') }}