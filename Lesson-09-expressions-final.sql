-- ✅ SQLBolt - Lesson 09: Queries with Expressions
-- 📅 Date: 2025-06-18

-- 🔹 1. List all movies and their combined sales in millions of dollars
SELECT 
  m.title,
  ROUND((b.domestic_sales + b.international_sales) / 1000000.0, 2) AS total_sales_million
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id;

-- 🔹 2. List all movies and their ratings in percent
SELECT 
  m.title,
  b.rating * 10 AS rating_percent
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id;

-- 🔹 3. List all movies that were released on even number years
SELECT 
  title, year
FROM movies
WHERE year % 2 = 0;

-- 🧪 4. Show length in hours and minutes for all movies
SELECT 
  title,
  length_minutes,
  FLOOR(length_minutes / 60) AS hours,
  length_minutes % 60 AS minutes
FROM movies;

-- 🧪 5. List movies and profit difference between international and domestic sales
SELECT 
  m.title,
  b.international_sales - b.domestic_sales AS profit_difference
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id;

-- 🧪 6. List movies with title length in characters
SELECT 
  title,
  LENGTH(title) AS title_length
FROM movies;

-- 🧪 7. List all movies with sales per minute of movie
SELECT 
  m.title,
  ROUND((b.domestic_sales + b.international_sales) / m.length_minutes, 2) AS sales_per_minute
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id;

-- 🧪 8. List all directors with average rating of their movies
SELECT 
  m.director,
  ROUND(AVG(b.rating), 2) AS avg_director_rating
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
GROUP BY m.director;
