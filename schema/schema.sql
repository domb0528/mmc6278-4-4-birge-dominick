CREATE DATABASE IF NOT EXISTS music_db;

USE music_db;

CREATE TABLE artists (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- create a "name" column that's a varchar of max 100 characters
ALTER TABLE artists
add name VARCHAR(100) NULL, name INT NULL ;
);

CREATE TABLE albums (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  
  ALTER TABLE albums
  add name VARCHAR(100) NULL, name INT NULL ;

  ALTER TABLE albums
  add artist_id INT

  ALTER TABLE
  add release_year INT
  
  
-- create a "name" column that's a varchar of max 100 characters
-- create an "artist_id" column that's an integer
-- create a "release_year" column that's an integer
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE
);

CREATE TABLE songs (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

  ALTER TABLE songs
 add name VARCHAR(100) NULL, name INT NULL ;

ALTER TABLE songs
add track_number INT

ALTER TABLE songs
add artist_id INT

ALTER TABLE songs
add album_id INT
-- create a "name" column that's a varchar of max 100 characters
-- create a "track_number" column that's an integer
-- create an "artist_id" column that's an integer
-- create an "album_id" column that's an integer
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums (id)
    ON DELETE CASCADE
);

-- Remember to use a comma BETWEEN each line!

-- NOTE: The foreign key constraints above ensure that when, for example,
-- an artist is deleted, that artist's songs and albums are also removed.
-- When an album is removed, that album's songs are also removed.