-- ✅ Lesson 2: Queries with Constraints (Pt. 1)

-- 🎯 Task 1: Find the movie with a row id of 6
SELECT * FROM movies WHERE id = 6;

-- 🎯 Task 2: Find the movies released in the years between 2000 and 2010
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

-- 🎯 Task 3: Find the movies not released in the years between 2000 and 2010
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

-- 🎯 Task 4: Find the first 5 Pixar movies and their release year
SELECT title, year FROM movies WHERE id <= 5;

-- 🧪 Experiment Section ---------------------------------------

-- 🔬 Find all movies released after 2010
SELECT * FROM movies WHERE year > 2010;

-- 🔬 Find all movies released in 1995, 1999, and 2003
SELECT * FROM movies WHERE year IN (1995, 1999, 2003);

-- 🔬 Find all movies except ones released in 1995 and 1998
SELECT * FROM movies WHERE year NOT IN (1995, 1998);

-- 🔬 Find movies with id greater than 3 and less than 10
SELECT * FROM movies WHERE id > 3 AND id < 10;

-- 🔬 Find the titles of movies with an odd-numbered ID
SELECT title FROM movies WHERE id % 2 = 1;
