-- Lesson 3: Queries with constraints (Part 2)

-- 1️⃣ Find all the Toy Story movies
SELECT * FROM movies
WHERE title LIKE 'Toy Story%';

-- 2️⃣ Find all the movies directed by John Lasseter
SELECT * FROM movies
WHERE director = 'John Lasseter';

-- 3️⃣ Find all the movies (and director) not directed by John Lasseter
SELECT title, director FROM movies
WHERE director != 'John Lasseter';

-- 4️⃣ Find all the WALL-* movies
SELECT * FROM movies
WHERE title LIKE 'WALL-%';

-- 🧪 Experiment Section --

-- Find movies that start with 'C'
SELECT * FROM movies
WHERE title LIKE 'C%';

-- Find movies where director name contains 'Andrew'
SELECT * FROM movies
WHERE director LIKE '%Andrew%';

-- Find all movies NOT directed by Pete Docter or Brad Bird
SELECT * FROM movies
WHERE director NOT IN ('Pete Docter', 'Brad Bird');

-- Find movies whose title is exactly 3 characters (like 'Up')
SELECT * FROM movies
WHERE title LIKE '___';

-- Find movies where the title ends with 'e'
SELECT * FROM movies
WHERE title LIKE '%e';

