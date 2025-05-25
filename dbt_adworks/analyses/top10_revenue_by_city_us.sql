-- Top 10 Total Revenue in 2011 by Shipping City in United State (biggest market)

select
	coalesce(city, 'Unknown') as city,
	coalesce(state_province_name, 'Unknown') as province,
	coalesce(country_name, 'Unknown') as country,
	sum(revenue) as total_revenue
from {{ ref('obt_sales') }}
where
	date_part('year', date_day) = 2011 AND country_name = 'United States'
group by 
	country,
	province,
	city
order by
	total_revenue desc
-- commented to fix error with dbt show command
-- limit 10