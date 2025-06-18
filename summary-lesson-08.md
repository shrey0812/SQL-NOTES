# ✅ Lesson 8: A short note on NULLs

## 🔍 Focus:
Understand the nature of NULL values in SQL and how to correctly filter and manage incomplete or missing data using `IS NULL` and `IS NOT NULL`.

## 🧠 Core Learnings:
- `NULL` is not the same as empty or 0 — it means *unknown or missing*.
- Must use `IS NULL` / `IS NOT NULL` for NULL checking — standard comparisons like `=` or `!=` won’t work.
- Outer joins often produce `NULL` values for unmatched records.

## ✅ Tasks Solved:
1. ✅ Found unassigned employees (building is NULL).
2. ✅ Found buildings with no employees assigned.

## 🧪 Bonus Experiments:
1. ✅ Count of unassigned employees using `COUNT(*)` + `WHERE building IS NULL`.
2. ✅ Count of buildings without employees using `LEFT JOIN` + `WHERE e.name IS NULL`.
3. ✅ Fetched all employees that are assigned (filtered using `IS NOT NULL`).
4. ✅ Calculated percentage of unassigned employees for analytical reporting.
5. ✅ Labeled employees as ‘Assigned’ or ‘Unassigned’ using `CASE WHEN`.
6. ✅ Identified partially filled buildings (useful for space optimization analysis).

## 💡 Real-World Use Cases:
- HR systems need to flag unassigned employees for onboarding or space planning.
- Facility monitoring dashboards use such queries to detect underutilized or unused buildings.
- Business intelligence teams often track NULLs to gauge data completeness and identify pipeline gaps.
