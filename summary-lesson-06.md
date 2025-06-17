# Lesson 6: Multi-table Queries with JOINs

## ✅ Summary:
Learned how to combine normalized tables using INNER JOINs and extract relational data effectively, such as movie info and box office stats.

## 🧠 Key Concepts:
- `INNER JOIN`: Combines rows across tables using shared keys (e.g., `movies.id = boxoffice.movie_id`)
- JOINs let us use info from multiple tables in a single query
- Filtering, ordering, and calculation logic still works post-join

## 📌 Tasks Solved:
- Retrieved domestic and international sales for all movies
- Filtered movies with higher international sales than domestic
- Sorted movies by ratings in descending order

## 🔬 Experiments:
- Movies with ratings above 8.2
- Top 5 grossing movies by total sales
- Average rating of all Pixar movies
- Long runtime + high-rated movies
- Oldest movie with >$400M international revenue

## ⚙️ Use Cases:
These JOINs are essential when working with real-world normalized databases across domains like e-commerce (products + sales), HR (employee + payroll), or social platforms (users + posts).
