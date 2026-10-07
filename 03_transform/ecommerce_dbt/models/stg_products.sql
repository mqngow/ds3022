select
    product_id,
    vendor_id,
    product_name,
    upper(trim(category)) as category,
    round(price, 2) as price,
    in_stock
from {{ source('ecommerce', 'products') }}
where price > 0