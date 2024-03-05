# Write your MySQL query statement below
# QUESTION IS WHY THIS IS WORKING??????
select round(sum(case when datediff(customer_pref_delivery_date,order_date)=0 then 1 else 0 end)/count(distinct customer_id) * 100, 2) as  immediate_percentage
from Delivery
where (customer_id,order_date) in (select customer_id,min(order_date) from Delivery group by customer_id)