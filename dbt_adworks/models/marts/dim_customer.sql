with stg_customer as (
	select *
	from {{ ref('stg_customer') }}
),

stg_person as (
	select *
	from {{ ref('stg_person') }}
),

stg_store as (
	select *
	from {{ ref('stg_store') }}
),

tb_final as (
	select
        {{ dbt_utils.generate_surrogate_key(['t1.customer_id']) }} as customer_key,
		t1.customer_id,
		t1.person_id,
		coalesce(t2.person_full_name, 'Unknown') as person_name,
		t1.store_id,
		coalesce(t3.store_name, 'Unknown') as store_name
	from stg_customer as t1
		left join stg_person as t2
			on t1.person_id = t2.person_id
		left join stg_store as t3
			on t1.store_id = t3.store_id
	where 
		t1.person_id is not null 
		and t1.store_id is not null
)


select * from tb_final