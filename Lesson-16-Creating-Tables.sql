-- ✅ Lesson 16: Creating Tables
-- Date: 2025-06-23 (Current time: 9:02:51 AM IST)

-- 📘 Introduction:
-- The CREATE TABLE statement is used to define a new table in the database.
-- It specifies the table's name and the columns it will contain, along with their data types and optional constraints.

-- Basic Syntax:
-- CREATE TABLE table_name (
--     column1_name DataType [Constraint],
--     column2_name DataType [Constraint],
--     ...
-- );

-- The IF NOT EXISTS clause prevents an error if a table with the same name already exists.

-- 🎯 Task 1: Create a new table named Database with the following columns:
-- - Name: A string (text) describing the name of the database
-- - Version: A number (floating point) of the latest version of this database
-- - Download_count: An integer count of the number of times this database was downloaded
-- This table has no constraints.

CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);

-- 🧪 Experiment Section -----------------------------------------
-- 🔬 Experiment 1: Create a table called 'Students' with id (INTEGER PRIMARY KEY), name (TEXT NOT NULL), age (INTEGER), and major (VARCHAR(50)).
-- This experiment introduces primary keys and NOT NULL constraints.
CREATE TABLE IF NOT EXISTS Students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    major VARCHAR(50)
);

-- 🔬 Experiment 2: Create a table called 'Products' with product_id (INTEGER PRIMARY KEY AUTOINCREMENT),
-- product_name (TEXT UNIQUE), price (REAL NOT NULL), and stock_quantity (INTEGER DEFAULT 0).
-- This experiment uses AUTOINCREMENT, UNIQUE, REAL, and DEFAULT value.
CREATE TABLE IF NOT EXISTS Products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT UNIQUE,
    price REAL NOT NULL,
    stock_quantity INTEGER DEFAULT 0
);

-- 🔬 Experiment 3: Create a table 'Employees' with employee_id (INTEGER PRIMARY KEY),
-- first_name (TEXT), last_name (TEXT), hire_date (DATE), salary (INTEGER CHECK(salary > 0)).
-- This uses DATE type and a CHECK constraint.
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    hire_date DATE,
    salary INTEGER CHECK(salary > 0)
);

-- 🔬 Experiment 4: Attempt to create a table without any columns (should result in an error).
-- This demonstrates that a table must have at least one column.
-- CREATE TABLE EmptyTable (); -- This will error out, demonstrating a required structure.

-- 🔬 Experiment 5: Create a simple 'LogEntries' table for logging events, with timestamp and event_description.
CREATE TABLE IF NOT EXISTS LogEntries (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, -- Common for logging
    event_description TEXT
);
