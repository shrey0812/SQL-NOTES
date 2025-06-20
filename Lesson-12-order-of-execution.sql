-- ✅ SQLBolt - Lesson 12: Order of Execution of a Query
-- 📅 Date: 2025-06-18

-- 🔹 1. Find the number of movies each director has directed
SELECT director, COUNT(*) AS movie_count
FROM movies
GROUP BY director;

-- 🔹 2. Find the total domestic and international sales that can be attributed to each director
SELECT m.director,
       SUM(b.domestic_sales) AS total_domestic_sales,
       SUM(b.international_sales) AS total_international_sales
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
GROUP BY m.director;

-- 🧪 3. List directors with more than 2 movies directed
SELECT director, COUNT(*) AS total_movies
FROM movies
GROUP BY director
HAVING COUNT(*) > 2;

-- 🧪 4. Directors ordered by total global sales (domestic + international)
SELECT m.director,
       SUM(b.domestic_sales + b.international_sales) AS total_global_sales
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
GROUP BY m.director
ORDER BY total_global_sales DESC;

-- 🧪 5. Average rating of each director’s movies
SELECT m.director,
       ROUND(AVG(b.rating), 2) AS avg_rating
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
GROUP BY m.director;

-- 🧪 6. Highest grossing movie by global sales
SELECT m.title,
       (b.domestic_sales + b.international_sales) AS global_sales
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
ORDER BY global_sales DESC
LIMIT 1;

-- 🧪 7. Directors whose total international sales > 1 billion
SELECT m.director,
       SUM(b.international_sales) AS total_intl_sales
FROM movies AS m
JOIN boxoffice AS b ON m.id = b.movie_id
GROUP BY m.director
HAVING total_intl_sales > 1000000000;

-- 🧪 8. Director and average movie length
SELECT director, ROUND(AVG(length_minutes), 1) AS avg_length
FROM movies
GROUP BY director;
