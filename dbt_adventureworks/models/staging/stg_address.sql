select
	addressid as address_id,
	case 
		when addressline2 is not null
			then concat(addressline1, ', ', addressline2)
			else addressline1
		end 
	as full_address,
	city,
	stateprovinceid as state_province_id,
	postalcode as postal_code
from {{ ref('person_address') }}