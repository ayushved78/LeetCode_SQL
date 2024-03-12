# Write your MySQL query statement below
select e2.employee_id, e2.name, COUNT(*) AS reports_count, ROUND(AVG(e1.age),0) AS average_age
from Employees e1
join Employees e2 on e1.reports_to=e2.employee_id
group by e2.name, e2.employee_id
order by e2.employee_id