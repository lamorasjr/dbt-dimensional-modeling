-- Total Revenue in 2011 by Order status

select
	order_status,
	sum(revenue) as total_revenue
from {{ ref('obt_sales') }}
where
	date_part('year', date_day) = 2011
group by 
	order_status
order by
	total_revenue desc