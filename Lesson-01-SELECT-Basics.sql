-- Lesson 01: SELECT Basics
-- 📘 Introduction to SELECT queries: Retrieving data from SQL tables

-- 🔹 Task 1: Find the title of each film
SELECT title FROM movies;

-- 🔹 Task 2: Find the director of each film
SELECT director FROM movies;

-- 🔹 Task 3: Find the title and director of each film
SELECT title, director FROM movies;

-- 🔹 Task 4: Find the title and year of each film
SELECT title, year FROM movies;

-- 🔹 Task 5: Find all the information about each film
SELECT * FROM movies;

-- ✅ Each query demonstrates a different way to extract specific data from the 'movies' table
-- using SELECT statements with column lists or the asterisk (*) shorthand.
