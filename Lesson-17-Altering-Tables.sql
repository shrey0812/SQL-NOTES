-- ✅ Lesson 17: Altering Tables
-- Date: 2025-06-23 (Current time: 9:26:00 AM IST)

-- 📘 Introduction:
-- The ALTER TABLE statement is used to modify the structure of an existing table.
-- Common operations include adding, removing, or modifying columns and constraints.
-- Syntax varies across databases for some operations (e.g., dropping columns, changing column types).

-- Basic Syntax for Adding a Column:
-- ALTER TABLE table_name
-- ADD column_name DataType [OptionalConstraint] [DEFAULT default_value];

-- 🎯 Task 1: Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE movies
ADD Aspect_ratio FLOAT;

-- 🎯 Task 2: Add another column named Language with a TEXT data type to store the language that the movie was released in.
-- Ensure that the default for this language is English.
ALTER TABLE movies
ADD Language TEXT DEFAULT 'English';

-- 🧪 Experiment Section -----------------------------------------
-- Note: SQLBolt's SQLite implementation for ALTER TABLE only supports ADD COLUMN.
-- Other operations like DROP COLUMN, RENAME COLUMN, or ALTER COLUMN TYPE might not work here,
-- but are included in comments to show common ALTER TABLE capabilities in other SQL databases.

-- 🔬 Experiment 1: Add a 'Rating' column (INTEGER, allowing NULLs) to the movies table.
-- This is a simple addition without a default or complex constraint.
ALTER TABLE movies
ADD Rating INTEGER;

-- 🔬 Experiment 2: Add a 'Release_date' column (DATE) with a default value of today's date (if supported, CURRENT_DATE).
-- This demonstrates adding a date column with a dynamic default.
ALTER TABLE movies
ADD Release_date DATE DEFAULT CURRENT_DATE;

-- 🔬 Experiment 3: Attempt to add a 'Budget' column with a CHECK constraint (value must be positive).
-- This shows combining ADD COLUMN with a constraint.
ALTER TABLE movies
ADD Budget INTEGER CHECK (Budget >= 0);

-- 🔬 Experiment 4 (Conceptual - not runnable in SQLBolt): Drop the 'Rating' column if it were supported.
-- ALTER TABLE movies
-- DROP COLUMN Rating;

-- 🔬 Experiment 5 (Conceptual - not runnable in SQLBolt): Rename the 'movies' table to 'pixar_films'.
-- ALTER TABLE movies
-- RENAME TO pixar_films;

-- 🔬 Experiment 6 (Conceptual - not runnable in SQLBolt): Modify the 'Language' column to be NOT NULL, assuming it already has values.
-- ALTER TABLE movies
-- ALTER COLUMN Language TEXT NOT NULL;
