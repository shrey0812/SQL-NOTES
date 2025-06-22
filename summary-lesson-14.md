# 📘 Lesson 14: Updating Rows – Mastering Data Modification

---

## ✅ Core Concept: Modifying Existing Data with `UPDATE`

This lesson introduced the **`UPDATE`** statement, a fundamental DML (Data Manipulation Language) command used to modify existing records within a database table. Unlike `INSERT` (for adding new rows) or `DELETE` (for removing rows), `UPDATE` allows for precise changes to specific columns of specific rows that already exist.

### Key Learnings:

* **Purpose of `UPDATE`**: To correct errors, reflect new information, or make bulk changes to data that is already stored in a table.
* **Essential Components**: An `UPDATE` statement *must* specify:
    1.  The `table_name` where the changes will occur.
    2.  The `SET` clause, which lists the `column = new_value` pairs (or expressions) to be updated. Multiple columns can be updated in a single `SET` clause, separated by commas.
    3.  Crucially, a **`WHERE` clause** to define which specific rows will be affected by the update.
* **Critical Importance of `WHERE`**: Without a `WHERE` clause, the `UPDATE` statement will apply the specified changes to ***every single row*** in the table. This is a common and potentially catastrophic mistake in real-world scenarios, leading to massive data corruption.
* **Data Type Compatibility**: The `new_value` provided for a column in the `SET` clause must be compatible with the column's defined data type (e.g., updating a `YEAR` column, which is an integer, with a number).
* **Handling Apostrophes in Strings**: When updating string values that contain apostrophes (like "A Bug's Life"), the apostrophe must be escaped by doubling it (e.g., `'Bug''s Life'`).

## 🛠️ Syntax Dissection: The `UPDATE` Statement Structure

The general syntax for the `UPDATE` statement is as follows:

```sql
UPDATE table_name
SET
    column1 = value_or_expression_1,
    column2 = value_or_expression_2,
    -- ... (more column-value pairs)
WHERE
    condition_to_select_rows;
