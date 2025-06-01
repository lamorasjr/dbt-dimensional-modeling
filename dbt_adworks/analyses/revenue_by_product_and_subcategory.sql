-- Total Revenue in 2011 by Product category and subcategory

select
	subcategory_name as product_subcategory,
	category_name as product_category,
	sum(revenue) as total_revenue
from {{ ref('obt_sales') }}
where
	date_part('year', date_day) = 2011
group by 
	product_subcategory,
	product_category
order by
	total_revenue desc