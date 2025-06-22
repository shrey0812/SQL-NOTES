# 📘 Lesson 15: Deleting Rows – Permanent Data Removal

---

## ✅ Core Concept: Removing Existing Data with `DELETE`

This lesson focused on the **`DELETE`** statement, another critical DML (Data Manipulation Language) command used to remove one or more existing records from a database table. `DELETE` is used when specific rows are no longer needed or are incorrect.

### Key Learnings:

* **Purpose of `DELETE`**: To permanently remove unwanted rows from a table. This is distinct from `TRUNCATE` (which removes all rows and resets the table) or `DROP` (which removes the entire table structure).
* **Essential Components**: A `DELETE` statement *must* specify:
    1.  The `table_name` from which rows will be removed.
    2.  Crucially, a **`WHERE` clause** to define which specific rows will be deleted.
* **Extreme Caution with `WHERE`**: Just like with `UPDATE`, omitting the `WHERE` clause in a `DELETE` statement will result in ***all rows being irrevocably removed*** from the table. This is a highly dangerous operation, especially in production environments, as data loss is permanent without proper backups.
* **Best Practice: `SELECT` before `DELETE`**: It is strongly recommended to always write your `WHERE` clause first and test it with a `SELECT` query (e.g., `SELECT * FROM your_table WHERE your_condition;`) to confirm that *only* the intended rows are selected *before* executing the `DELETE` statement.

## 🛠️ Syntax Dissection: The `DELETE` Statement Structure

The general syntax for the `DELETE` statement is straightforward:

```sql
DELETE FROM table_name
WHERE condition_to_select_rows;
