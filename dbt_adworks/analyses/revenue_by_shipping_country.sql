-- Total Revenue in 2011 by Shipping Country

select
	coalesce(country_name, 'Unknown') as country,
	sum(revenue) as total_revenue
from {{ ref('obt_sales') }}
where
	date_part('year', date_day) = 2011
group by 
	country
order by
	total_revenue desc