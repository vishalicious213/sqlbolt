-- SQL Review: Simple SELECT Queries

-- 1. List all the Canadian cities and their populations

SELECT * FROM north_american_cities
WHERE Country = "Canada";

-- or

SELECT city, population FROM north_american_cities
WHERE country = "Canada";

-- 2. Order all the cities in the United States by their latitude from north to south

SELECT * FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;

-- or

SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

-- 3. List all the cities west of Chicago, ordered from west to east

SELECT * FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude;

-- or

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- 4. List the two largest cities in Mexico (by population)

SELECT * FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
LIMIT 2;

-- or

SELECT city, population FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;

-- 5. List the third and fourth largest cities (by population) in the United States and their population

SELECT * FROM north_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
LIMIT 2
OFFSET 2;

-- or

SELECT city, population FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;