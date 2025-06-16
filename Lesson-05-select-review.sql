-- Lesson 5: SQL Review - Simple SELECT Queries
-- Date: 2025-06-16

-- 1️⃣ List all the Canadian cities and their populations
SELECT city, population
FROM north_american_cities
WHERE country = 'Canada';

-- 2️⃣ Order all the cities in the United States by their latitude from north to south
SELECT city, latitude
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

-- 3️⃣ List all the cities west of Chicago, ordered from west to east
SELECT city, longitude
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- 4️⃣ List the two largest cities in Mexico (by population)
SELECT city, population
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

-- 5️⃣ List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;

-- 🧪 Experiment Section --

-- 🧪 List all cities located north of 40 degrees latitude
SELECT city, latitude
FROM north_american_cities
WHERE latitude > 40
ORDER BY latitude DESC;

-- 🧪 Find cities with population over 2 million, ordered by country then city
SELECT city, country, population
FROM north_american_cities
WHERE population > 2000000
ORDER BY country, city;

-- 🧪 List all cities east of Toronto (i.e., longitude > -79.383184)
SELECT city, longitude
FROM north_american_cities
WHERE longitude > -79.383184
ORDER BY longitude ASC;

-- 🧪 Rank all cities by population, largest to smallest
SELECT city, country, population
FROM north_american_cities
ORDER BY population DESC;
