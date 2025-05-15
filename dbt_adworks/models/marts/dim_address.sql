with stg_address as (
	select *
	from {{ ref('stg_address') }}
),

stg_state_province as (
	select *
	from {{ ref('stg_state_province') }}
),

stg_country_region as (
	select *
	from {{ ref('stg_country_region') }}
),

tb_final as (
	select
		{{ dbt_utils.generate_surrogate_key(['t1.address_id']) }} as address_key,
		t1.address_id,
		t1.postal_code,
		t1.full_address,
		t1.city,
		t1.state_province_id,
		t2.state_province_name,
		t2.state_province_code,
		t2.country_code,
		t3.country_name
	from stg_address as t1
		left join stg_state_province as t2
			on t1.state_province_id = t2.state_province_id
		left join stg_country_region as t3
			on t2.country_code = t3.country_code
)

select * from tb_final