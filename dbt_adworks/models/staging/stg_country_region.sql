select
	countryregioncode as country_code,
	"name" as country_name
from {{ ref('person__country_region') }}