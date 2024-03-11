# Write your MySQL query statement below
(
    select name as results
    from MovieRating
    join Users using(user_id)
    group by user_id
    order by count(*) desc, name
    limit 1
) UNION ALL(
    select title as results
    from MovieRating
    join Movies
    using(movie_id)
    where year(created_at) = 2020 and month(created_at)=2
    group by movie_id
    order by avg(rating) desc, title
    limit 1
)