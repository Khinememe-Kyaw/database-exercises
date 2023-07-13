USE codeup_test_db;
# All albums in your table.
SELECT * FROM albums;
# All albums released before 1980
SELECT * FROM albums where release_date < 1980;
# All albums by Michael Jackson
SELECT * FROM albums where artist = 'Michael Jackson';

# Make all the albums 10 times more popular (sales * 10)
SELECT * FROM albums;
UPDATE albums
    SET sales = sales * 10;
SELECT * FROM albums;

# Move all the albums before 1980 back to the 1800s.
SELECT * FROM albums where release_date < 1980;
UPDATE albums
    SET release_date = release_date-100
        where release_date < 1980;
SELECT * FROM albums;
# Change 'Michael Jackson' to 'Peter Jackson'
SELECT * FROM albums where artist = 'Michael Jackson';
UPDATE albums
    SET artist = 'Peter Jackson'
        where artist = 'Michael Jackson';
SELECT * FROM albums;