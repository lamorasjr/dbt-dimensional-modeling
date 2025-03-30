with reasons as (
	select *
	from {{ ref('stg_sales_reasons') }}
),

orders_reasons as (
	select *
	from {{ ref('stg_sales_orders_reasons') }}
),

tb_final as (
	select 
		{{ dbt_utils.generate_surrogate_key(['t2.sales_order_id', 't1.sales_reason_id']) }} as order_reason_key,
		t2.sales_order_id,
		t1.sales_reason_id,
		t1.reason,
		t1.reason_type
	from reasons as t1
		inner join orders_reasons as t2
			on t1.sales_reason_id = t2.sales_reason_id
)

select * from tb_final