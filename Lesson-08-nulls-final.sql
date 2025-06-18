-- ✅ SQLBolt - Lesson 08: A short note on NULLs
-- 📅 Date: 2025-06-18

-- 🔹 1. Find the name and role of all employees who have not been assigned to a building
SELECT name, role
FROM employees
WHERE building IS NULL;

-- 🔹 2. Find the names of the buildings that hold no employees
SELECT b.building_name
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
WHERE e.name IS NULL;

-- 🧪 1. Count of employees who have NOT been assigned any building
SELECT COUNT(*) AS unassigned_employee_count
FROM employees
WHERE building IS NULL;

-- 🧪 2. Count of buildings with NO employees assigned
SELECT COUNT(DISTINCT b.building_name) AS buildings_without_employees
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
WHERE e.name IS NULL;

-- 🧪 3. List of employees who are assigned a building (building IS NOT NULL)
SELECT name, role, building
FROM employees
WHERE building IS NOT NULL;

-- 🧪 4. Percentage of employees who are unassigned
SELECT 
  ROUND(100.0 * SUM(CASE WHEN building IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS unassigned_percentage
FROM employees;

-- 🧪 5. Show all employees and label whether they are assigned to a building
SELECT 
  name, 
  role,
  building,
  CASE 
    WHEN building IS NULL THEN 'Unassigned'
    ELSE 'Assigned'
  END AS assignment_status
FROM employees;

-- 🧪 6. Number of buildings with partial occupancy (at least 1 employee but not fully occupied)
SELECT b.building_name, b.capacity, COUNT(e.name) AS assigned_employees
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
GROUP BY b.building_name, b.capacity
HAVING COUNT(e.name) > 0 AND COUNT(e.name) < b.capacity;
