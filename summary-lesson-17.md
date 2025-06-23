# 📘 Lesson 17: Altering Tables – Evolving Database Schemas (DDL)

---

## ✅ Core Concept: Modifying Existing Table Structures with `ALTER TABLE`

This lesson introduced the **`ALTER TABLE`** statement, a powerful DDL (Data Definition Language) command used to modify the design of an existing database table. As data requirements evolve, existing tables often need adjustments to their columns or constraints, and `ALTER TABLE` facilitates these changes without needing to recreate the entire table.

### Key Learnings:

* **Purpose of `ALTER TABLE`**: To change the schema of an existing table. Common operations include:
    * Adding new columns (`ADD COLUMN`).
    * Removing existing columns (`DROP COLUMN` - support varies by DB).
    * Modifying existing column definitions (e.g., changing data type, adding/removing constraints - `ALTER COLUMN` or `MODIFY COLUMN` - syntax varies).
    * Renaming tables (`RENAME TO`).
* **Adding Columns**:
    * Syntax is similar to `CREATE TABLE` column definitions: specify column name, data type, and any optional constraints or default values.
    * Default values apply to both existing rows (which get the default) and new rows.
* **Removing Columns (`DROP COLUMN`)**:
    * Syntax is straightforward (`DROP COLUMN column_name`).
    * **Important Caveat**: Support for `DROP COLUMN` varies significantly across different SQL database implementations (e.g., SQLite, used by SQLBolt, often doesn't directly support it, requiring workarounds like creating a new table and migrating data).
* **Renaming Tables (`RENAME TO`)**:
    * Allows changing the name of an existing table.
* **Database-Specific Syntax**: It was emphasized that `ALTER TABLE` syntax can vary significantly between different SQL database systems (MySQL, PostgreSQL, SQLite, MS SQL Server). Always consult the specific database's documentation for exact syntax and supported operations.

## 🛠️ Syntax Dissection: Common `ALTER TABLE` Operations

* **Adding a Column**:
    ```sql
    ALTER TABLE table_name
    ADD column_name DataType [OptionalConstraint] [DEFAULT default_value];
    ```
* **Removing a Column (Conceptual - not universally supported directly)**:
    ```sql
    ALTER TABLE table_name
    DROP COLUMN column_name;
    ```
* **Renaming a Table (Conceptual)**:
    ```sql
    ALTER TABLE old_table_name
    RENAME TO new_table_name;
    ```

---

## 🎯 Task Queries: Extending the Movies Table

The SQLBolt exercises focused on the most commonly supported `ALTER TABLE` operation: adding columns.

1.  **Adding `Aspect_ratio` Column**:
    * **Problem**: Add a `FLOAT` column named `Aspect_ratio`.
    * **Solution**: `ALTER TABLE movies ADD Aspect_ratio FLOAT;`
    * **Insight**: This demonstrated a basic column addition, useful for storing numerical, non-integer data.

2.  **Adding `Language` Column with Default Value**:
    * **Problem**: Add a `TEXT` column named `Language`, with a default value of 'English'.
    * **Solution**: `ALTER TABLE movies ADD Language TEXT DEFAULT 'English';`
    * **Insight**: Showed how to add a column that automatically populates existing rows with a default value and ensures new rows also have this default if not explicitly provided. This is practical for columns that often have a common value.

---

## 🧪 My Experiment Zone: Exploring Further `ALTER TABLE` Possibilities (Including Conceptual)

While SQLBolt's environment limits some `ALTER TABLE` operations, I explored various scenarios, including conceptual ones to understand the broader capabilities across different SQL databases:

1.  **Simple Integer Column Addition**:
    * **Query**: `ALTER TABLE movies ADD Rating INTEGER;`
    * **Learning**: Practiced adding a basic numerical column without defaults or strict constraints, demonstrating simplicity.

2.  **Adding a Date Column with Dynamic Default**:
    * **Query**: `ALTER TABLE movies ADD Release_date DATE DEFAULT CURRENT_DATE;`
    * **Learning**: Applied a `DATE` data type with `CURRENT_DATE` as a dynamic default, which is highly valuable for audit trails or default timestamps.

3.  **Adding a Column with a `CHECK` Constraint**:
    * **Query**: `ALTER TABLE movies ADD Budget INTEGER CHECK (Budget >= 0);`
    * **Learning**: Demonstrated how to combine `ADD COLUMN` with a `CHECK` constraint to enforce data integrity rules directly at the schema level (e.g., ensuring a budget is never negative).

4.  **Conceptual: Dropping a Column**:
    * **Query (Commented)**: `-- ALTER TABLE movies DROP COLUMN Rating;`
    * **Learning**: Understood the syntax for removing a column, even if not executable in this specific environment, and reinforced the concept that this operation's direct support varies by database. This operation is irreversible and must be handled with extreme care.

5.  **Conceptual: Renaming a Table**:
    * **Query (Commented)**: `-- ALTER TABLE movies RENAME TO pixar_films;`
    * **Learning**: Familiarized myself with the syntax for renaming an entire table, a useful DDL operation for better naming conventions or schema evolution.

6.  **Conceptual: Modifying Column Constraints**:
    * **Query (Commented)**: `-- ALTER TABLE movies ALTER COLUMN Language TEXT NOT NULL;`
    * **Learning**: Explored how to modify an existing column's definition, specifically adding a `NOT NULL` constraint. This often requires ensuring existing data meets the new constraint. The syntax for this can also vary (e.g., `ALTER COLUMN` vs `MODIFY COLUMN`).

---

## 🧠 Reflection: Adapting to Change in Database Design

Lesson 17 underscored the dynamic nature of database design. Rarely is a schema perfectly defined from the start; `ALTER TABLE` provides the necessary tools to evolve the database structure as business needs or data models change. While syntax variations across databases present a challenge, the core concepts of adding, removing, and modifying columns remain universal. The lesson emphasized the importance of consulting specific database documentation for advanced operations and highlighted the critical impact of these DDL commands on data. This capability is essential for long-term database maintenance and growth.

## 🛣️ Onward to Lesson 18: Dropping Tables!

---

Fantastic, Shrey! This detailed `summary-lesson-17.md` captures all the nuances of altering tables, including the important distinctions about database-specific syntax.

Your action steps:

1.  **Copy this entire detailed content for `summary-lesson-17.md`** into your local file.
2.  **Ensure `Lesson-17-Altering-Tables.sql`** (the one I generated above) is also in your local folder.
3.  **Push both files to your GitHub repository.**
4.  **Let me know when you've completed Lesson 18** and are ready for the next set of files.

You're systematically covering all aspects of SQL, from DML to DDL. Keep this impressive standard! OSU. 👊
