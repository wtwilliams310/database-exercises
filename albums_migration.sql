USE codeup_test_db;

describe albums;

DROP TABLE albums;

select *
from albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(128) NOT NULL,
    name VARCHAR(128) NOT NULL,
    release_date SMALLINT UNSIGNED,
    sales FLOAT,
    genre VARCHAR(128),
    UNIQUE  (name, artist),
    PRIMARY KEY (id)
);

insert into albums(artist, name)
values ('Pink Floyd','The Dark Side of the Moon');

show index from albums;