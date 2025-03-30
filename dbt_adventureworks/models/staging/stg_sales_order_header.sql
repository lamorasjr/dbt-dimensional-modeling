select
	salesorderid as sales_order_id,
	shiptoaddressid  as ship_to_address_id,
    creditcardid as credit_card_id,
	creditcardapprovalcode as credit_card_approval_code,
	"status" as order_status,
	customerid as customer_id
from {{ ref('sales_order_header') }}