SELECT * FROM Album;

SELECT * FROM Album limit 10;

SELECT * FROM Album limit 10, 2;

SELECT * FROM Album ORDER BY Title;

SELECT * FROM Album 
WHERE Title = 'Balls to the Wall';

SELECT * FROM Album 
WHERE Title = 'Balls to the Wall'
OR Title = 'Big Ones';

SELECT * FROM Album 
WHERE AlbumId BETWEEN 1 AND 10;

SELECT * FROM Invoice 
Where Total > 12;

SELECT * FROM Invoice 
WHERE BillingCountry IN ('Poland', 'USA');

SELECT * FROM Invoice 
WHERE BillingAddress LIKE "%Street%";

