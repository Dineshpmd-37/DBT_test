  select customer_id,
  sum(order_amount)
  from raw.raw_sch.transactions
  group by customer_id
