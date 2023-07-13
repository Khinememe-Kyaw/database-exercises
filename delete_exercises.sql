USE codeup_test_db;
--     Albums released after 1991
    SELECT * FROM albums where release_date >1991;
    DELETE FROM albums where release_date >1991;
-- Albums with the genre 'disco'
    SELECT * FROM albums where genre = 'disco';
    DELETE FROM albums where genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
    SELECT * FROM albums where artist = 'Whitney Houston';
    DELETE FROM albums where artist = 'Whitney Houston';
    SELECT * FROM albums;



