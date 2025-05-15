select
	productcategoryid as product_category_id,
	name as category_name,
	modifieddate as modified_date
from {{ ref('product__product_category') }}