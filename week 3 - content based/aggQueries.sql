-- get simple userProfile
select t.name, ui.user_id, sum(ui.interaction) as dotProduct
from tags t
inner join document_tags dt on t.id = dt.tag_id
inner join documents d on d.id = dt.document_id
inner join user_interactions ui on d.id = ui.document_id
group by t.name, ui.user_id
order by name



--nbr of ratings per movie
select count(*) as ratingCount, m.id  as movie_id, m.title
from user_movie_ratings umr
inner join movies m on m.id = umr.movie_id
group by m.id, m.title
order by m.title



-- % of 4+ ratings
select
(select count(*) from user_movie_ratings where rating >= 4 and movie_id = m.id) as c1,
count(*) as c2,
(select count(*) from user_movie_ratings where rating >= 4 and movie_id = m.id)*100/count(*) as percentPositive, m.id, m.title
from user_movie_ratings umr
inner join movies m on m.id = umr.movie_id
group by m.id as movie_id, m.title
order by m.title


-- association w/ starwars
-- movie_id: 1198 - starwars
-- count of nbr ratings for star wars: 15
select count(*) as joinCount,
    count(*)*100/15 as association,
    u2.movie_id,
    m.title
    from users u
    inner join user_movie_ratings u1 on u.id = u1.user_id
    inner join user_movie_ratings u2 on u.id = u2.user_id
    inner join movies m on m.id = u2.movie_id
    where u1.movie_id = 260
    group by u2.movie_id, m.title
    order by association desc