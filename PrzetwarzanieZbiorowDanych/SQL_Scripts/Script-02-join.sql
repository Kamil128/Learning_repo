select a.*, b.* 
from album as a, Artist as b;

select Title, Name from Album as a
inner join Artist as b 
on a.ArtistId = b.ArtistId;

select Title, Name from Album as a
left join Artist as b 
on a.ArtistId = b.ArtistId
where Name is Null ;