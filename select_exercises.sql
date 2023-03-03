USE codeup_test_db;

show databases;

show tables;

describe albums;

SELECT * FROM albums;

SELECT 'Pink Floyd albums!' AS 'Info';
SELECT * FROM albums WHERE artist = 'Pink Floyd';


SELECT genre FROM albums WHERE name = 'Nevermind';