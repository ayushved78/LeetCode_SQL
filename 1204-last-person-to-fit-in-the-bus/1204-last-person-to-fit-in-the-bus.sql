# Write your MySQL query statement below
select person_name
from Queue q
# max wt is 1000, so keeping in record
where 1000 >= (select sum(weight) from Queue where q.turn >= turn)
# flip the table to get the last person name
order by turn desc
# gets only the last person name
limit 1