CREATE TABLE films (
  name TEXT,
  release_year INTEGER
);

INSERT INTO films (name, release_year)
VALUES ('Boys Dont Cry', 1999);

INSERT INTO films (name, release_year)
VALUES ('Shutter Island', 2010);

INSERT INTO films (name, release_year)
VALUES ('The Parent Trap', 1998);

INSERT INTO films (name, release_year)
VALUES ('The Conjuring', 2013);

INSERT INTO films (name, release_year)
VALUES ('Harry Potter & The Half-Blood Prince', 2009);

INSERT INTO films (name, release_year)
VALUES ('Carol', 2015);

INSERT INTO films (name, release_year)
VALUES ('Inception', 2010);

SELECT * FROM films WHERE release_year = 2010;
SELECT * FROM films WHERE release_year = 2013;

ALTER TABLE films ADD COLUMN runtime INTEGER;
ALTER TABLE films ADD COLUMN category TEXT;
ALTER TABLE films ADD COLUMN rating REAL;

UPDATE films
SET runtime = 118,
    category = 'Drama',
    rating = 7.5   
WHERE id = 1;

UPDATE films
SET runtime = 138,
    category = 'Thriller',
    rating = 8.2   
WHERE id = 2;

UPDATE films
SET runtime = 128,
    category = 'Adventure',
    rating = 6.6   
WHERE id = 3;

UPDATE films
SET runtime = 112,
    category = 'Horror',
    rating = 7.5   
WHERE id = 4;

UPDATE films
SET runtime = 153,
    category = 'Adventure',
    rating = 7.6   
WHERE id = 5;

UPDATE films
SET runtime = 118,
    category = 'Drama',
    rating = 7.2   
WHERE id = 6;

UPDATE films
SET runtime = 148,
    category = 'Adventure',
    rating = 8.8   
WHERE id = 7;

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);