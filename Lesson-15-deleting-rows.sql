-- ✅ Lesson 15: Deleting Rows
-- Date: 2025-06-22 (Current time: 11:39:57 AM IST)

-- 📘 Introduction:
-- The DELETE statement is used to remove existing records from a table.
-- Like UPDATE, it is paramount to specify a WHERE clause to avoid deleting all rows.

-- Syntax:
-- DELETE FROM table_name
-- WHERE condition;

-- If WHERE condition is omitted, ALL rows in the table will be deleted!

-- 🎯 Task 1: This database is getting too big, let's remove all movies that were released before 2005.
-- Note: It's good practice to run a SELECT * FROM movies WHERE year < 2005; first to verify.
DELETE FROM movies
WHERE year < 2005;

-- 🎯 Task 2: Andrew Stanton has also left the studio, so please remove all movies directed by him.
-- Note: It's good practice to run a SELECT * FROM movies WHERE director = 'Andrew Stanton'; first to verify.
DELETE FROM movies
WHERE director = 'Andrew Stanton';

-- 🧪 Experiment Section -----------------------------------------
-- 🔬 Experiment 1: Delete movies that have a length_minutes of exactly 81 minutes.
-- Before deleting, you might check: SELECT * FROM movies WHERE length_minutes = 81;
DELETE FROM movies
WHERE length_minutes = 81;

-- 🔬 Experiment 2: Delete movies that were directed by 'Brad Bird' AND released after 2007.
-- Verify with: SELECT * FROM movies WHERE director = 'Brad Bird' AND year > 2007;
DELETE FROM movies
WHERE director = 'Brad Bird' AND year > 2007;

-- 🔬 Experiment 3: Delete movies with 'Toy Story' in their title (case-insensitive).
-- Verify with: SELECT * FROM movies WHERE title LIKE '%Toy Story%';
DELETE FROM movies
WHERE title LIKE '%Toy Story%';

-- 🔬 Experiment 4: Delete movies whose 'id' is an even number.
-- Verify with: SELECT * FROM movies WHERE id % 2 = 0;
DELETE FROM movies
WHERE id % 2 = 0;

-- 🔬 Experiment 5: Delete the oldest movie in the database.
-- Verify with: SELECT * FROM movies ORDER BY year ASC LIMIT 1;
DELETE FROM movies
WHERE id = (SELECT id FROM movies ORDER BY year ASC LIMIT 1);
