# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit from Products p
join Orders o on p.product_id = o.product_id
where month(order_date) = 2 and year(order_date) = 2020
-- can work with where order_date between '2020-02-01' and '2020-02-29'
group by p.product_id
having unit >= 100