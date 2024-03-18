# Write your MySQL query statement below
select S.score, count(S2.score) as 'rank'
from Scores S,
(select distinct score from Scores) S2
where S.score <= S2.score
group by S.id
order by S.score desc