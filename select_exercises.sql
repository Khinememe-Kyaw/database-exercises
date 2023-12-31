USE codeup_test_db;

-- The name of all albums by Pink Floyd.
    SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
    SELECT release_date FROM albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
    SELECT genre FROM albums where name = 'Nevermind';
-- Which albums were released in the 1990s
    SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
-- Which albums had less than 20 million certified sales
    SELECT *FROM albums where sales < 20.0;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
    SELECT *FROM albums where genre = 'Rock';