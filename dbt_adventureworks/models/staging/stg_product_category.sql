select
	productcategoryid as product_category_id,
	name as category_name
from {{ ref('product_category') }}