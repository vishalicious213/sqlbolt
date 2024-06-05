-- SQL Lesson 6: Multi-table queries with JOINs

-- 1. Find the domestic and international sales for each movie

SELECT * FROM movies
INNER JOIN Boxoffice
ON Movies.id = Boxoffice.Movie_id;

-- or

SELECT id, title, domestic_sales, international_sales FROM movies
INNER JOIN Boxoffice
ON Movies.id = Boxoffice.Movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically

SELECT id, title, domestic_sales, international_sales FROM movies
INNER JOIN Boxoffice
ON Movies.id = Boxoffice.Movie_id
WHERE international_sales > domestic_sales;

-- 3. List all the movies by their ratings in descending order

SELECT title, rating FROM movies
INNER JOIN Boxoffice
ON id = movie_id
ORDER BY rating DESC;