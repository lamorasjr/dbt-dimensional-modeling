with stg_order_details as (
	select
		sales_order_id,
		sales_order_detail_id,
		product_id,
		order_qty,
		unit_price,
		revenue
	from {{ ref('stg_sales_order_details') }}
),

stg_sales_order_header as (
	select *
	from {{ ref('stg_sales_order_header') }}
),

tb_final as (
    select
        {{ dbt_utils.generate_surrogate_key(['t1.sales_order_id', 'sales_order_detail_id']) }} as sales_key,
        t1.sales_order_id,
        t1.sales_order_detail_id,
        t1.product_id,
        t1.order_qty,
        t1.unit_price,
        t1.revenue,
        t2.customer_id,
        t2.credit_card_id,
        t2.ship_to_address_id,
        t2.order_status,
        cast(t2.order_date as date) as order_date
    from stg_order_details as t1
        inner join stg_sales_order_header as t2
            on t1.sales_order_id = t2.sales_order_id
)

select * from tb_final