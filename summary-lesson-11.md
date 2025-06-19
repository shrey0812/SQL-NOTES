# ✅ Lesson 11: Queries with Aggregates (Part 2 - HAVING)

## 🔍 Focus:
Learning how to **filter aggregated groups** using the `HAVING` clause after a `GROUP BY`.

## 🧠 Core Learnings:
- `WHERE` filters rows **before** grouping.
- `HAVING` filters groups **after** aggregation.
- You can combine both in a single query when needed.
- Aggregate filters (like `SUM(...) > value`) **require** `HAVING`, not `WHERE`.

## ✅ Tasks Solved:
1. ✅ Counted all Artists using a simple `WHERE` + `COUNT`.
2. ✅ Grouped all employees by `role` and counted each.
3. ✅ Summed years worked by all Engineers using a `WHERE` + `SUM`.

## 🧪 Bonus Experiments:
- Filtered roles with more than 2 employees using `HAVING`.
- Retrieved buildings where total employee years > 20.
- Averaged years per building with proper formatting.
- Found roles with average tenure > 5 years.
- Found the single building with the **highest total years**.
- Determined the **most experienced role** by cumulative work years.

## 💡 Real-World Use Cases:
- HR dashboards tracking team size thresholds.
- Facilities allocating space based on employee presence.
- Strategic planning by identifying experienced teams or overloaded departments.

---
