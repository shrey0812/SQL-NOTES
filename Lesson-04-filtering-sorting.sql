-- Lesson 4: Filtering and Sorting Query Results
-- Date: 2025-06-16

-- 1️⃣ List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director
FROM movies
ORDER BY director ASC;

-- 2️⃣ List the last four Pixar movies released (ordered from most recent to least)
SELECT title, year
FROM movies
ORDER BY year DESC
LIMIT 4;

-- 3️⃣ List the first five Pixar movies sorted alphabetically
SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5;

-- 4️⃣ List the next five Pixar movies sorted alphabetically
SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

-- 🧪 Experiment Section --

-- Find top 3 longest Pixar movies
SELECT title, length_minutes
FROM movies
ORDER BY length_minutes DESC
LIMIT 3;

-- Skip first 10 movies and list next 5 alphabetically
SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 10;

-- List all movies directed by 'Brad Bird', sorted by year
SELECT title, year
FROM movies
WHERE director = 'Brad Bird'
ORDER BY year ASC;

-- Find Pixar movies shorter than 95 minutes
SELECT title, length_minutes
FROM movies
WHERE length_minutes < 95
ORDER BY length_minutes ASC;
