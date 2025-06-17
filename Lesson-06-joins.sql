-- Lesson 6: Multi-table Queries with JOINs
-- Date: 2025-06-16

-- 1️⃣ Find the domestic and international sales for each movie
SELECT m.title, b.domestic_sales, b.international_sales
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id;

-- 2️⃣ Show the sales numbers for each movie that did better internationally rather than domestically
SELECT m.title, b.domestic_sales, b.international_sales
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
WHERE b.international_sales > b.domestic_sales;

-- 3️⃣ List all the movies by their ratings in descending order
SELECT m.title, b.rating
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
ORDER BY b.rating DESC;

-- 🧪 Experiment Section --

-- 🧪 List movies that have a rating above 8.2
SELECT m.title, b.rating
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
WHERE b.rating > 8.2
ORDER BY b.rating DESC;

-- 🧪 Show top 5 grossing movies by total sales (domestic + international)
SELECT m.title, (b.domestic_sales + b.international_sales) AS total_sales
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
ORDER BY total_sales DESC
LIMIT 5;

-- 🧪 Get the average rating of all Pixar movies
SELECT ROUND(AVG(b.rating), 2) AS average_rating
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id;

-- 🧪 List movies with runtime over 110 minutes and rating above 7.5
SELECT m.title, m.length_minutes, b.rating
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
WHERE m.length_minutes > 110 AND b.rating > 7.5
ORDER BY b.rating DESC;

-- 🧪 Show the oldest movie with international sales above $400M
SELECT m.title, m.year, b.international_sales
FROM movies AS m
INNER JOIN boxoffice AS b ON m.id = b.movie_id
WHERE b.international_sales > 400000000
ORDER BY m.year ASC
LIMIT 1;
