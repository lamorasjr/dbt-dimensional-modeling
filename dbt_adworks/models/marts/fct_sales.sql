with stg_order_details as (
	select *
	from {{ ref('stg_sales_order_details') }}
),

stg_sales_order_header as (
	select *
	from {{ ref('stg_sales_order_header') }}
),

tb_final as (
    select
        {{ dbt_utils.generate_surrogate_key(['t1.sales_order_id', 't1.sales_order_detail_id']) }} as sales_key,
        {{ dbt_utils.generate_surrogate_key(['t1.product_id']) }} as product_key,
        {{ dbt_utils.generate_surrogate_key(['t2.customer_id']) }} as customer_key,
        {{ dbt_utils.generate_surrogate_key(['t2.credit_card_id']) }} as credit_card_key,
        {{ dbt_utils.generate_surrogate_key(['t2.ship_to_address_id']) }} as ship_to_address_key,
        {{ dbt_utils.generate_surrogate_key(['t2.order_date']) }} as order_date_key,
        t2.order_status,
        t1.sales_order_id,
        t1.sales_order_detail_id,
        round(t1.unit_price, 2) as unit_price,
        t1.order_qty,
        round(t1.unit_price * t1.order_qty, 2) as revenue
        
    from stg_order_details as t1
        inner join stg_sales_order_header as t2
            on t1.sales_order_id = t2.sales_order_id
)

select * from tb_final