select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

from {{ source('jaffle_shop', 'orders') }}
{{limit_data(column_name='order_date',  days_limit=3000)}}