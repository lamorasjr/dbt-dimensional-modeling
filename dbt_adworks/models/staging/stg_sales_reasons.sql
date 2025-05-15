select
	salesreasonid as sales_reason_id,
	"name" as reason,
	reasontype as reason_type,
	modifieddate as modified_date
from {{ ref('sales__sales_reason') }}