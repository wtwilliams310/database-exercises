USE codeup_test_db;

DROP TABLE albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date SMALLINT UNSIGNED,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);
