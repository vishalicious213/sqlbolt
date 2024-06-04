-- SQL Lesson 4: Filtering and sorting Query results

-- 1. List all directors of Pixar movies (alphabetically), without duplicates

SELECT DISTINCT Director FROM movies
ORDER BY Director;

-- 2. List the last four Pixar movies released (ordered from most recent to least)

SELECT * FROM movies
ORDER BY Year DESC
LIMIT 4;

-- or

SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

-- 3. List the first five Pixar movies sorted alphabetically

SELECT * FROM movies
ORDER BY Title
LIMIT 5;

-- or

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

-- 4. List the next five Pixar movies sorted alphabetically

SELECT * FROM movies
ORDER BY Title
LIMIT 5
OFFSET 5;

-- or

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;