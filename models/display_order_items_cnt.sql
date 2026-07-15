{{ config(
    materialized='view',
    schema='L2_PROCESSING'
) }}




select o.orderid as orderid,count(oi.orderitemid) as order_items_count
from {{ source('landing', 'ordr') }} o
join {{source('landing','ordritms')}} oi
on o.orderid=oi.orderid
group by o.orderid
