-- 1. What are tracks for a given album?--
select * from tracks

-- 2. What are the albums produced by a given artist?--
select
	*
from
	album
where
	musician_id = 1

-- 3. What is the track with the longest duration?--
select
	*
from
	track
order by
	duration desc
limit
	1

-- 4. What are the albums released in the 60s? 70s? 80s? 90s?--
select
	*
from
	album
where
	year between 1960 and 1999
order by
	year

-- 5. How many albums did a given artist produce in the 90s--
select
	*
from
	album
where
	year between 1990 and 1991 and musician_id = 2

-- 6. What year is each artist's latest album--
select
	musician.name, max(album.year)
from
	musician
inner join
	album
on
	album.musician_id = musician.musician_id
group by
	musician.musician_id;

-- 7. What is the title of each artist's latest album? *Hint: try using a combination of order by, a subselect, and a distinct on*--


-- 8. List all albums along with its total duration based on summing the duration of its tracks.--
album.name, sum(track.duration)
from
track
inner join
album
on
track.album_id = album.album_id
group by
album.album_id

-- 9. What is the album with the longest duration?--
  select
	album.name, sum(track.duration)
from
	track
inner join
	album
on
	track.album_id = album.album_id
group by
	album.album_id
order by
	sum(track.duration) desc
order by
	sum(track.duration) desc
limit
  1

-- 10. Who are the 5 most prolific artists based on the number of albums they have recorded?--
  select
  	musician.name, count(album.musician_id)
  from
  	album
  inner join
  	musician
  on
  	musician.musician_id = album.musician_id
  group by
  	musician.musician_id
  order by
  	count(album.musician_id) desc
  limit
  	5

-- 11. What are all the tracks a given artist has recorded?--
  select
    *
  from
    track
  where
    musician_id = 3

-- 12. What are the top 5 most often recorded songs

-- 13. Who are the top 5 song writers whose songs have been most often recorded

-- 14. who is the most prolific song writer based on the number of songs he has written

-- 15. What songs has a given artist recorded

-- 16. Who are the song writers whose songs a given artist has recorded

-- 17. Who are the artists who have recorded a given song writer's songs 
