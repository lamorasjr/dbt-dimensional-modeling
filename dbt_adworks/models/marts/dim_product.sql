with stg_product as (
	select *
	from {{ ref('stg_product' )}}
),

stg_product_subcategory as (
	select *
	from {{ ref('stg_product_subcategory' )}}
),

stg_product_category as (
	select *
	from {{ ref('stg_product_category' )}}
),

tb_final as (
	select
		{{ dbt_utils.generate_surrogate_key(['t1.product_id'])  }} as product_key,
		t1.product_id,
		t1.product_name,
		t1.product_class,
		t1.product_number,
		t1.product_color,
		t1.product_cost,
		t1.product_price,
		t2.product_subcategory_id,
		t2.subcategory_name,
		t3.product_category_id,
		t3.category_name
	from stg_product as t1
		left join stg_product_subcategory as t2
			on t1.product_subcategory_id = t2.product_subcategory_id
		left join stg_product_category as t3
			on t2.product_category_id = t3.product_category_id
)

select * from tb_final
