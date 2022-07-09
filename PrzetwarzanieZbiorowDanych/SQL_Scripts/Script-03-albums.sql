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

-- Który artysat wypóscilł najdłuższy
-- pod względem ilości utworów album.
select 
Al.Title as Album,
Ar.Name as Band,
-- Tr.Name as Song
Count(Tr.Name)
from Album as Al
left join Artist as Ar 
On Ar.ArtistId = Al.ArtistId 
left join Track as Tr
on Tr.AlbumId = Al.AlbumId 
Group by Album, Band
Order by Band;


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

