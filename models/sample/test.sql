  select customer_id,
  sum(order_amount) as total_sum
  from raw.raw_sch.transactions
  group by customer_id
