# Write your MySQL query statement below #AYUSHLOVECTE
with cte as (
select d.name as Department, e.name as Employee,e.salary as Salary 
from Employee e
inner join Department d on e.departmentId = d.id
where 3 > (select count(distinct e1.salary) from Employee e1
          where e1.salary > e.salary and e1.departmentId=e.departmentId)
)

select Department, Employee, Salary from cte 
