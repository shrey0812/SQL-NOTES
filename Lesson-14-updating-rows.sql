-- ✅ Lesson 14: Updating Rows
-- Date: 2025-06-22

-- 📘 Introduction:
-- The UPDATE statement is used to modify existing records in a table.
-- It's crucial to always use a WHERE clause to specify which rows to update;
-- otherwise, all rows in the table will be affected.

-- Syntax:
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- 🎯 Task 1: The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies
SET director = 'John Lasseter'
WHERE title = 'A Bug''s Life'; -- Note: 'Bug''s Life' uses two single quotes to escape the apostrophe

-- 🎯 Task 2: The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies
SET year = 1999
WHERE title = 'Toy Story 2';

-- 🎯 Task 3: Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
-- Assuming "Toy Story 8" refers to the row that should be "Toy Story 3". This task implies correcting a specific row.
-- From the provided table, Toy Story 3 has id 11.
UPDATE movies
SET title = 'Toy Story 3', director = 'Lee Unkrich'
WHERE id = 11; -- Or WHERE title = 'Toy Story 8' if it existed and was the intended target. Using ID for precision here.

-- 🧪 Experiment Section -----------------------------------------
-- 🔬 Experiment 1: Correct the length_minutes for 'Monsters, Inc.' to 92 (original value in exercise intro)
-- Current length for Monsters, Inc. is 100 based on the provided table.
UPDATE movies
SET length_minutes = 92
WHERE title = 'Monsters, Inc.';

-- 🔬 Experiment 2: Update all movies directed by 'Andrew Stanton' to have a length_minutes of 105 if their current length is NULL
-- This simulates updating missing or incorrect data for a specific director.
UPDATE movies
SET length_minutes = 105
WHERE director = 'Andrew Stanton' AND length_minutes IS NULL;

-- 🔬 Experiment 3: Increase the length_minutes of all movies released before 2000 by 5 minutes
UPDATE movies
SET length_minutes = length_minutes + 5
WHERE year < 2000;

-- 🔬 Experiment 4: Change the director of 'Cars 2' from 'John Lasseter' to 'Brian Fee'
UPDATE movies
SET director = 'Brian Fee'
WHERE title = 'Cars 2';

-- 🔬 Experiment 5: Reset the director of 'A Bug''s Life' back to its original (incorrect) director before task 1, if it was not John Lasseter.
-- This requires knowing the original incorrect director, or just setting it to a new value for demonstration.
-- Let's assume we're changing it back to a placeholder for demonstration.
UPDATE movies
SET director = 'Original Incorrect Director'
WHERE title = 'A Bug''s Life' AND director = 'John Lasseter'; -- Only if it was correctly updated by Task 1
