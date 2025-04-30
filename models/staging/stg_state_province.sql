select
	stateprovinceid as state_province_id,
	territoryid as territory_id,
	countryregioncode as country_region_code,
	"name" as state_province_name,
	isonlystateprovinceflag as is_only_state_province_flag,
	stateprovincecode as state_province_code
from {{ ref('person_state_province') }}