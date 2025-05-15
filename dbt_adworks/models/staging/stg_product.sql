select
	productid as product_id,
	productsubcategoryid as product_subcategory_id,
	name as product_name,
	class as product_class,
	productnumber as product_number,
	color as product_color,
	standardcost as product_cost,
	listprice as product_price,
	sellstartdate as sell_start_date
from {{ ref('product__product') }}