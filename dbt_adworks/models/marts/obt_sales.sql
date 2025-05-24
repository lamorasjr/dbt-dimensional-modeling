with f_sales as (
    select * from {{ ref('fct_sales') }}
),

d_product as (
    select * from {{ ref('dim_product') }}
),

d_customer as (
    select * from {{ ref('dim_customer') }}
),

d_credit_card as (
    select * from {{ ref('dim_credit_card') }}
),

d_address as (
    select * from {{ ref('dim_address') }}
),

d_date as (
    select * from {{ ref('dim_date') }}
),

d_order_reasons as (
    select * from {{ ref('dim_order_reasons') }}
),

tb_final as (
    select 
        {{ dbt_utils.star(from=ref('fct_sales'), relation_alias='f_sales', except=['product_key','customer_key','credit_card_key','ship_to_address_key','order_date_key']) }},
        {{ dbt_utils.star(from=ref('dim_product'), relation_alias='d_product', except=['product_key']) }},
        {{ dbt_utils.star(from=ref('dim_customer'), relation_alias='d_customer', except=['customer_key']) }},
        {{ dbt_utils.star(from=ref('dim_credit_card'), relation_alias='d_credit_card', except=['credit_card_key', 'sales_order_id']) }},
        {{ dbt_utils.star(from=ref('dim_address'), relation_alias='d_address', except=['ship_to_address_key', 'address_key']) }},
        {{ dbt_utils.star(from=ref('dim_date'), relation_alias='d_date', except=['date_key']) }},
        {{ dbt_utils.star(from=ref('dim_order_reasons'), relation_alias='d_order_reasons', except=['order_reason_key','sales_order_id']) }}
        
    from f_sales
        left join d_product 
            on f_sales.product_key = d_product.product_key
        left join d_customer 
            on f_sales.customer_key = d_customer.customer_key
        left join d_credit_card 
            on f_sales.credit_card_key = d_credit_card.credit_card_key
        left join d_address 
            on f_sales.ship_to_address_key = d_address.address_key
        left join d_date 
            on f_sales.order_date_key = d_date.date_key
        left join d_order_reasons 
            on f_sales.order_key = d_order_reasons.order_reason_key
)

select * from tb_final