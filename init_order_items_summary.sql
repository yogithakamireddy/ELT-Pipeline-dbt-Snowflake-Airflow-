select
    order_key,
    sum(extended_price) as gross_items_sales_amount,
    sum(item_discount_amount) as item_discount_amount
from
    {{ ref('init_order_items') }}
group by
    order_key