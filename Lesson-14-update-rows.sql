-- ✅ Core Tasks for Lesson 14: Updating Rows

-- 1. Correcting the director of A Bug's Life
UPDATE movies
SET director = 'John Lasseter'
WHERE title = 'A Bug''s Life';

-- 2. Correcting the release year of Toy Story 2
UPDATE movies
SET year = 1999
WHERE title = 'Toy Story 2';

-- 3. Correcting both title and director for Toy Story 8
UPDATE movies
SET title = 'Toy Story 3',
    director = 'Lee Unkrich'
WHERE title = 'Toy Story 8';

-- 🔬 Bonus Experiments (Minimum 4, Extended)

-- 🧪 1. Increase the length of all Brad Bird movies by 2 minutes
UPDATE movies
SET length_minutes = length_minutes + 2
WHERE director = 'Brad Bird';

-- 🧪 2. Change all movies released before 2000 to be labeled as “Classic [Title]”
UPDATE movies
SET title = 'Classic ' || title
WHERE year < 2000;

-- 🧪 3. Temporarily rename all movies longer than 110 minutes to include “[LONG]”
UPDATE movies
SET title = title || ' [LONG]'
WHERE length_minutes > 110;

-- 🧪 4. Set the year of all Andrew Stanton movies to NULL (for QA testing)
UPDATE movies
SET year = NULL
WHERE director = 'Andrew Stanton';

-- 🧪 5. Set the length of all Pete Docter movies to exactly 100 minutes
UPDATE movies
SET length_minutes = 100
WHERE director = 'Pete Docter';

-- 🧪 6. Mark sequels by appending " - Sequel" if the title contains "2" or "3"
UPDATE movies
SET title = title || ' - Sequel'
WHERE title LIKE '%2%' OR title LIKE '%3%';
