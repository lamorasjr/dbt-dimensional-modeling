select
	addressid as address_id,
	concat_ws(', ',addressline1, addressline2) as full_address,
	city,
	stateprovinceid as state_province_id,
	postalcode as postal_code
from {{ ref('person_address') }}