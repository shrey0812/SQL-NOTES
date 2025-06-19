-- ✅ SQLBolt - Lesson 10: Queries with Aggregates (Part 1)
-- 📅 Date: 2025-06-18

-- 🔹 1. Find the longest time that an employee has been at the studio
SELECT 
  MAX(years_employed) AS longest_tenure
FROM employees;

-- 🔹 2. For each role, find the average number of years employed by employees in that role
SELECT 
  role,
  ROUND(AVG(years_employed), 2) AS avg_years_employed
FROM employees
GROUP BY role;

-- 🔹 3. Find the total number of employee years worked in each building
SELECT 
  building,
  SUM(years_employed) AS total_years_worked
FROM employees
GROUP BY building;

-- 🧪 4. Count of employees per role
SELECT 
  role,
  COUNT(*) AS total_employees
FROM employees
GROUP BY role;

-- 🧪 5. Minimum and maximum tenure per building
SELECT 
  building,
  MIN(years_employed) AS min_tenure,
  MAX(years_employed) AS max_tenure
FROM employees
GROUP BY building;

-- 🧪 6. Average tenure across entire studio
SELECT 
  ROUND(AVG(years_employed), 2) AS avg_tenure_all
FROM employees;

-- 🧪 7. Roles sorted by average tenure
SELECT 
  role,
  ROUND(AVG(years_employed), 2) AS avg_tenure
FROM employees
GROUP BY role
ORDER BY avg_tenure DESC;

-- 🧪 8. Total employee years worked across studio
SELECT 
  SUM(years_employed) AS total_years_studio
FROM employees;
