select
	salesorderid as sales_order_id,
	shiptoaddressid  as ship_to_address_id,
    creditcardid as credit_card_id,
	customerid as customer_id
from {{ ref('sales_order_header') }}