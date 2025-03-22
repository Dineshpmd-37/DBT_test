{{config(materialized='view')}}

with cte as (select id as cust_id,
first_name||' '||last_name as full_name
from {{source('stg_data','customers')}}
)
select * from cte