/*
 *
 *  @author Adam Swaim
 */

/*
 *  Normally you wouldn't include your SQL file in your application folder.
 *  However, I'm including it here for the sake of being able to actually use this program.
 *  It only connects to localhost as is, anyway.
 *
 *  You can also run this to reset your movie table to a default.
*/
DROP TABLE IF EXISTS Movies;

CREATE TABLE IF NOT EXISTS Movies (
Title VARCHAR(128) NOT NULL,
Genre VARCHAR(32),
Rating ENUM('G', 'PG', 'PG13', 'R'),
Year INT,
PRIMARY KEY (Title)
);

INSERT INTO Movies(Title, Genre, Rating, Year)
VALUES  ('Shrek', 'Comedy', 'PG', 2001), 
        ('Monsters Inc', 'Adventure', 'G', 2001),
        ('Life of Pi', 'Drama', 'PG', 2012), 
        ('Frozen', 'Musical', 'PG', 2013),
        ('The Dark Knight', 'Action', 'PG13', 2008), 
        ('Pan''s Labyrinth', 'Drama', 'R', 2006);