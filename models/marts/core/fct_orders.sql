with orders as (
    select * from {{ ref('stg_orders')}}
),
payments as (
    select * from {{ ref('stg_payments')}}
)
select  orders.customer_id,
        orders.order_id,
        payments.amount
from orders 
left join payments using (order_id)
where payments.status ='success'