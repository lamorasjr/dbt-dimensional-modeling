with stg_reasons as (
	select *
	from {{ ref('stg_sales_reasons') }}
),

stg_orders_reasons as (
	select *
	from {{ ref('stg_sales_orders_reasons') }}
),

tb_final as (
	select 
		distinct t2.sales_order_id,
		(case when t1.reason_type = 'Promotion' then 1 else null end) as reason_type_promotion,
		(case when t1.reason_type = 'Marketing' then 1 else null end) as reason_type_marketing,
		(case when t1.reason_type = 'Other' then 1 else null end) as reason_type_other,
		{{ dbt_utils.generate_surrogate_key(['t2.sales_order_id'])  }} as order_reason_key
	from stg_reasons as t1
		inner join stg_orders_reasons as t2
			on t1.sales_reason_id = t2.sales_reason_id
)

select * from tb_final