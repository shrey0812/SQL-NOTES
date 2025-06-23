-- ✅ Lesson 18: Dropping Tables
-- Date: 2025-06-23 (Current time: 9:49:57 AM IST)

-- 📘 Introduction:
-- The DROP TABLE statement is used to permanently remove an entire table from the database.
-- This includes all its data, its schema (column definitions, constraints, etc.), and any associated indexes.
-- It is a DDL (Data Definition Language) command, affecting the database structure.

-- Syntax:
-- DROP TABLE [IF EXISTS] table_name;

-- The IF EXISTS clause is crucial to prevent an error if the table does not exist.
-- Unlike DELETE, which only removes rows, DROP TABLE removes the table itself.

-- 🎯 Task 1: We've sadly reached the end of our lessons, let's clean up by removing the Movies table
-- Note: It's highly recommended to backup data or confirm in a non-production environment before executing.
DROP TABLE IF EXISTS Movies;

-- 🎯 Task 2: And drop the BoxOffice table as well
-- Note: Check for any foreign key dependencies on this table before dropping.
DROP TABLE IF EXISTS BoxOffice;

-- 🧪 Experiment Section -----------------------------------------
-- 🔬 Experiment 1: Attempt to drop a table that does not exist, without IF EXISTS (this would typically cause an error).
-- DROP TABLE NonExistentTable; -- Commented out to prevent execution error in actual environment.

-- 🔬 Experiment 2: Re-attempt dropping a table with IF EXISTS clause, demonstrating error suppression.
-- This shows how to safely attempt a drop without knowing if the table exists.
DROP TABLE IF EXISTS AnotherTestTable;

-- 🔬 Experiment 3: Create a temporary table and then immediately drop it.
-- This demonstrates the full cycle of DDL for a simple table.
CREATE TABLE IF NOT EXISTS TempData (
    id INTEGER PRIMARY KEY,
    value TEXT
);
-- INSERT INTO TempData (value) VALUES ('Test'); -- Optional: insert some data
DROP TABLE IF EXISTS TempData;

-- 🔬 Experiment 4 (Conceptual): Discuss the difference between DROP TABLE, DELETE FROM, and TRUNCATE TABLE.
-- DROP TABLE: Removes table schema AND data permanently. (DDL)
-- DELETE FROM: Removes rows from a table, leaves schema intact. (DML)
-- TRUNCATE TABLE: Removes all rows efficiently, usually faster than DELETE, often resets identity columns, leaves schema intact. (DDL, but behaves like DML)
-- The choice depends on whether you want to remove data, or the entire structure.

-- 🔬 Experiment 5 (Conceptual): Consider the impact of Foreign Keys before dropping.
-- If TableA has a FOREIGN KEY referencing TableB, you cannot DROP TableB until
-- the FOREIGN KEY constraint in TableA is removed or TableA is dropped first.
-- This highlights the importance of understanding database relationships.
-- Example:
-- CREATE TABLE Categories (category_id INTEGER PRIMARY KEY);
-- CREATE TABLE Products (product_id INTEGER PRIMARY KEY, category_id INTEGER, FOREIGN KEY (category_id) REFERENCES Categories(category_id));
-- DROP TABLE Categories; -- This would fail if Products table still exists and references Categories
-- DROP TABLE Products; -- Drop dependent table first
-- DROP TABLE Categories; -- Then drop the referenced table
