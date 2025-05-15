SELECT 
	salesorderid as sales_order_id, 
	salesreasonid as sales_reason_id,
	modifieddate as modified_date
FROM {{ ref('sales__sales_order_reason') }}