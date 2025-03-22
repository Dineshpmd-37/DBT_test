select * 
from {{source('stg_data','orders')}} as o
inner join {{ref("stg_cust")}} as c
on o.order_id = c.cust_id