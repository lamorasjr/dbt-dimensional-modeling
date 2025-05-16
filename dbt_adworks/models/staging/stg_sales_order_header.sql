select
	salesorderid as sales_order_id,
	shiptoaddressid  as ship_to_address_id,
    creditcardid as credit_card_id,
	cast(orderdate as date) as order_date,
	creditcardapprovalcode as credit_card_approval_code,
	"status" as order_status,
	customerid as customer_id,
	modifieddate as modified_date
from {{ ref('sales__sales_order_header') }}