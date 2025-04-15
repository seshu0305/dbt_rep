select count(*) as num_of_orders
from {{ ref("stg_customer_orders")}}
where DATE(order_purchase_timestamp) = current_date()
having count(*)> 0
