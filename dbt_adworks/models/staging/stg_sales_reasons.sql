select
	salesreasonid as sales_reason_id,
	"name" as reason,
	reasontype as reason_type
from {{ ref('sales_reason') }}