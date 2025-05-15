select
	businessentityid as store_id,
	storename as store_name,
	salespersonid as salespersonid,
	modifieddate as modified_date
from {{ ref('sales__store') }}