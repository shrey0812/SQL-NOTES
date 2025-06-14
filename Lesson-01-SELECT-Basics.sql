-- 📘 Lesson 01: SELECT Basics
-- 🔍 Task 1: Find the title of each film
SELECT title FROM movies;

-- 🔍 Task 2: Find the director of each film
SELECT director FROM movies;

-- 🔍 Task 3: Find the title and director of each film
SELECT title, director FROM movies;

-- 🔍 Task 4: Find the title and year of each film
SELECT title, year FROM movies;

-- 🔍 Task 5: Find all the information about each film
SELECT * FROM movies;

-- 🔬 Experiment Zone - Shrey's Custom Queries
-- Q1: Get only the title and length
SELECT title, length_minutes FROM movies;

-- Q2: Movies released before 2005
SELECT * FROM movies WHERE year < 2005;

-- Q3: Movies sorted by year (desc)
SELECT * FROM movies ORDER BY year DESC;

-- Q4: Movies with more than 100 minutes
SELECT title FROM movies WHERE length_minutes > 100;

-- Q5: Top 2 shortest movies
SELECT * FROM movies ORDER BY length_minutes ASC LIMIT 2;
