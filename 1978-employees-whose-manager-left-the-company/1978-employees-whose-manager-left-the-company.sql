# Write your MySQL query statement below
select employee_id from Employees
where manager_id NOT IN (SELECT employee_id FROM Employees) and salary < 30000
order by employee_id