select 
FirstName, LastName,
min(Total) as min_total,
avg(Total) as avg_total,
max(Total) as max_total,
sum(Total) as sum_total,
count(*) as cnt_orders
from customer as c
left join Invoice as i 
on c.CustomerId = i.CustomerId 
group by FirstName, LastName;

SELECT
	c.FirstName AS imie,
	c.LastName AS nazwisko,
	SUM(i.Total) AS sum_total
FROM Customer AS c
LEFT JOIN Invoice AS i
ON c.CustomerId = i.CustomerId
GROUP BY imie, nazwisko
HAVING sum_total > 40

-- Który artysat wypuśćilł najdłuższy
-- pod względem ilości utworów album.
select 
Al.Title as Album,
Ar.Name as Band,
-- Tr.Name as Song
Count(Tr.Name) as cnt
from Album as Al
left join Artist as Ar
On Ar.ArtistId = Al.ArtistId
left join Track as Tr
on Tr.AlbumId = Al.AlbumId
Group by Album
Order by cnt desc;


With Album_Artist as (
select 
Al.Title as Album,
Ar.Name as Band,
Tr.Name as Song
from Album as Al
left join Artist as Ar 
On Ar.ArtistId = Al.ArtistId 
left join Track as Tr
on Tr.AlbumId = Al.AlbumId )
select * from Album_Artist

Select ArtistId, 
Count(Title) as cnt
from Album
group by ArtistId
having count(Title) > 10

