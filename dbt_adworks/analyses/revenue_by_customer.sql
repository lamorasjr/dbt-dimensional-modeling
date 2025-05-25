-- Total Revenue in 2011 by Customers

select
	coalesce(person_name, 'Unknown') as customer,
	sum(revenue) as total_revenue
from {{ ref('obt_sales') }}
where
	date_part('year', date_day) = 2011
group by 
	customer
order by
	total_revenue desc