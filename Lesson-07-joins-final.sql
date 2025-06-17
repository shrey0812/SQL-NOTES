-- ✅ SQLBolt - Lesson 07: OUTER JOINs (LEFT JOIN only)
-- 📅 Date: 2025-06-16

-- 🔹 1. Find the list of all buildings that have employees
SELECT DISTINCT b.building_name
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
WHERE e.name IS NOT NULL;

-- 🔹 2. Find the list of all buildings and their capacity
SELECT building_name, capacity
FROM buildings;

-- 🔹 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT b.building_name, e.role
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building;

-- 🧪 Extras below (Optional Experiments) --

-- 🧪 Buildings with no employees
SELECT b.building_name
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
WHERE e.name IS NULL;

-- 🧪 Employee count per building (including 0s)
SELECT b.building_name, COUNT(e.name) AS employee_count
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
GROUP BY b.building_name;

-- 🧪 Unique roles per building
SELECT b.building_name, COUNT(DISTINCT e.role) AS unique_roles
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
GROUP BY b.building_name;

-- 🧪 Average years of employment per building
SELECT b.building_name, ROUND(AVG(e.years_employed), 2) AS avg_years
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
GROUP BY b.building_name;
