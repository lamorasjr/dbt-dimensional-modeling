select
	countryregioncode as country_region_code,
	"name" as country_name
from {{ ref('person_country_region') }}