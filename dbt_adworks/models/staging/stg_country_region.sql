select
	countryregioncode as country_code,
	"name" as country_name,
	modifieddate as modified_date
from {{ ref('person__country_region') }}