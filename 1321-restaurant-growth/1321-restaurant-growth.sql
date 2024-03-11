# Write your MySQL query statement below _COPIED
with cte as (
    select visited_on, sum(amount) as amount
    from Customer
    group by visited_on
)

select c1.visited_on, sum(c2.amount) as amount, round(avg(c2.amount),2) as average_amount
from cte as c1
join cte as c2 on c2.visited_on <= c1.visited_on and 
datediff(c1.visited_on,c2.visited_on) < 7
group by c1.visited_on
having count(*) = 7
order by visited_on