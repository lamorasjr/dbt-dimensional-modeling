select
	stateprovinceid as state_province_id,
	territoryid as territory_id,
	countryregioncode as country_code,
	"name" as state_province_name,
	isonlystateprovinceflag as is_only_state_province_flag,
	stateprovincecode as state_province_code
from {{ ref('person__state_province') }}