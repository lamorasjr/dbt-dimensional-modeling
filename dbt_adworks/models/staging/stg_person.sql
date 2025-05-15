select
	businessentityid as person_id,
	concat_ws(' ', title, firstname, middlename, lastname) AS person_full_name,
	emailpromotion as email_promotion,
	modifieddate as modified_date
from {{ ref('person__person') }}