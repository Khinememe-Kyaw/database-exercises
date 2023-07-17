USE codeup_test_db;
CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50) DEFAULT 'NONE',
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);
DROP TABLE quotes;
CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        artist VARCHAR(255),
                        name VARCHAR(255),
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(255)
                        UNIQUE (artist, name)
);
SHOW CREATE TABLE albums;
SHOW tables;
DESCRIBE albums;
DROP TABLE albums;
SHOW tables;

