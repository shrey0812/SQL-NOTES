-- ✅ SQLBolt - Lesson 11: Queries with Aggregates (Part 2 - HAVING)
-- 📅 Date: 2025-06-18

-- 🔹 1. Find the number of Artists in the studio (without a HAVING clause)
SELECT COUNT(*) AS total_artists
FROM employees
WHERE role = 'Artist';

-- 🔹 2. Find the number of Employees of each role in the studio
SELECT role, COUNT(*) AS role_count
FROM employees
GROUP BY role;

-- 🔹 3. Find the total number of years employed by all Engineers
SELECT SUM(years_employed) AS total_engineer_years
FROM employees
WHERE role = 'Engineer';

-- 🧪 4. Roles with more than 2 employees (HAVING clause example)
SELECT role, COUNT(*) AS num_employees
FROM employees
GROUP BY role
HAVING COUNT(*) > 2;

-- 🧪 5. Buildings where cumulative years worked exceed 20
SELECT building, SUM(years_employed) AS total_years
FROM employees
GROUP BY building
HAVING total_years > 20;

-- 🧪 6. Average tenure per building (rounded)
SELECT building, ROUND(AVG(years_employed), 2) AS avg_tenure
FROM employees
GROUP BY building;

-- 🧪 7. Roles with average tenure > 5 years
SELECT role, ROUND(AVG(years_employed), 2) AS avg_years
FROM employees
GROUP BY role
HAVING AVG(years_employed) > 5;

-- 🧪 8. Building with the highest total employee years
SELECT building, SUM(years_employed) AS total_years
FROM employees
GROUP BY building
ORDER BY total_years DESC
LIMIT 1;

-- 🧪 9. Most experienced role (by total years worked)
SELECT role, SUM(years_employed) AS total_years
FROM employees
GROUP BY role
ORDER BY total_years DESC
LIMIT 1;
