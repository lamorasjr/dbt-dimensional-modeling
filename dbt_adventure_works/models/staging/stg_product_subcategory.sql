select
	productsubcategoryid as product_subcategory_id,
	productcategoryid as product_category_id,
	name as subcategory_name
from {{ ref('product_subcategory') }}