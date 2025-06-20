-- ✅ SQLBolt - Lesson 13: Inserting Rows
-- 📅 Date: 2025-06-18

-- 🔹 1. Add Toy Story 4 to the Movies table
INSERT INTO movies (title, director, year, length_minutes)
VALUES ('Toy Story 4', 'Josh Cooley', 2019, 100);

-- 🔹 2. Add Toy Story 4’s box office data
-- Assume new auto-incremented id is 15, so movie_id = 15
INSERT INTO boxoffice (movie_id, rating, domestic_sales, international_sales)
VALUES (15, 8.7, 340000000, 270000000);

-- 🧪 3. Insert a movie with rating expressed using an arithmetic expression
INSERT INTO boxoffice (movie_id, rating, domestic_sales, international_sales)
VALUES (16, 7 + 0.5, 150000000, 230000000);

-- 🧪 4. Insert using expression for sales in millions
INSERT INTO boxoffice (movie_id, rating, domestic_sales, international_sales)
VALUES (17, 6.8, 280.5 * 1000000, 301.2 * 1000000);

-- 🧪 5. Insert a movie with minimal columns (no ID, assuming default ID will auto-increment)
INSERT INTO movies (title, director, year, length_minutes)
VALUES ('Elemental', 'Peter Sohn', 2023, 101);

-- 🧪 6. Insert multiple movies in one statement
INSERT INTO movies (title, director, year, length_minutes)
VALUES
  ('Luca', 'Enrico Casarosa', 2021, 95),
  ('Turning Red', 'Domee Shi', 2022, 100);
