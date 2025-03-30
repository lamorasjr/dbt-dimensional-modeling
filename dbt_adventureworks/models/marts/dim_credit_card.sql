with sales_orders_header as (
	select * 
	from {{ ref('stg_sales_order_header') }}
),

credit_card as (
	select *
	from {{ ref('stg_credit_card') }}
),

tb_final as (
	select
		{{ dbt_utils.generate_surrogate_key(['t1.sales_order_id', 't1.credit_card_id']) }} as credit_card_key,
		t1.sales_order_id,
		t1.credit_card_id,
		t2.card_type,
		t2.card_number,
		t2.expiration_year_month
	from sales_orders_header as t1
		inner join credit_card as t2
			on t1.credit_card_id = t2.credit_card_id
)

select * from tb_final
