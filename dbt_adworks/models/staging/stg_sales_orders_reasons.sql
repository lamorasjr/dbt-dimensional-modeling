SELECT 
	salesorderid as sales_order_id, 
	salesreasonid as sales_reason_id
FROM {{ ref('sales__sales_order_reason') }}