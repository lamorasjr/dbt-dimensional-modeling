select
	businessentityid as store_id,
	storename as store_name,
	salespersonid as salespersonid
from {{ ref('sales__store') }}