
# SELECT name
# AS 'Albums before 1991'
DELETE
FROM albums WHERE release_date > 1991;

SELECT * FROM albums;

# SELECT genre
# AS 'Albums with genre of Disco'
DELETE
FROM albums WHERE genre = 'disco';

# SELECT name
# AS 'Albums by Pink Floyd'
DELETE
FROM albums WHERE artist = 'Pink Floyd';

