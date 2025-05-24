# Business Analysis

### 1 - Total Revenue in 2011 by Product category and subcategory

```sql
select
	subcategory_name as product_subcategory,
	category_name as product_category,
	sum(revenue) as total_revenue
from obt_sales
where
	date_part('year', date_day) = 2011
group by 
	product_subcategory,
	product_category
order by
	total_revenue desc;
```


### 2 - Total Revenue in 2011 by Customer

```sql
select
	coalesce(person_name, 'Unknown') as customer,
	sum(revenue) as total_revenue
from obt_sales
where
	date_part('year', date_day) = 2011
group by 
	customer
order by
	total_revenue desc;
```


### 3 - Total Revenue in 2011 by Order status

```sql
select
	order_status,
	sum(revenue) as total_revenue
from obt_sales
where
	date_part('year', date_day) = 2011
group by 
	order_status
order by
	total_revenue desc;
```


### 4 - Total Revenue in 2011 by Shipping Country

```sql
select
	coalesce(country_name, 'Unknown') as country,
	sum(revenue) as total_revenue
from obt_sales
where
	date_part('year', date_day) = 2011
group by 
	country
order by
	total_revenue desc;
```

### 5 - Top 10 Total Revenue in 2011 by Shipping City in United State (Biggest Market)

```sql
select
	coalesce(city, 'Unknown') as city,
	coalesce(state_province_name, 'Unknown') as province,
	coalesce(country_name, 'Unknown') as country,
	sum(revenue) as total_revenue
from obt_sales
where
	date_part('year', date_day) = 2011 AND country_name = 'United States'
group by 
	country,
	province,
	city
order by
	total_revenue desc
limit 10;
```