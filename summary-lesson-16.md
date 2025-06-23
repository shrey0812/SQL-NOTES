# 📘 Lesson 16: Creating Tables – Defining Database Structure (DDL)

---

## ✅ Core Concept: Structuring Your Data with `CREATE TABLE`

This lesson introduced **DDL (Data Definition Language)** with the fundamental **`CREATE TABLE`** statement. This is a significant pivot from DML (Data Manipulation Language - `SELECT`, `INSERT`, `UPDATE`, `DELETE`), as it deals with defining the *structure* of your database rather than manipulating the data within it. `CREATE TABLE` is how you establish new entities and relationships in your database schema.

### Key Learnings:

* **Purpose of `CREATE TABLE`**: To define a new table in the database, specifying its name and the columns it will contain. This forms the blueprint for how data will be stored.
* **Table Schema**: The structure of a table is defined by its schema, which is a series of column definitions.
* **Column Definition**: Each column requires:
    1.  **Name**: A unique identifier for the column within the table.
    2.  **Data Type**: Specifies the type of data the column can store (e.g., `INTEGER`, `TEXT`, `FLOAT`, `DATE`). This ensures data integrity and efficient storage.
    3.  **Optional Constraints**: Rules that limit what values can be inserted into the column (e.g., `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `FOREIGN KEY`).
    4.  **Optional Default Value**: A value that is automatically inserted if no value is explicitly provided during row insertion.
* **`IF NOT EXISTS` Clause**: An important clause to prevent errors if you try to create a table that already exists. It allows the statement to run without error, simply skipping the creation if the table is present.
* **Common Data Types Covered**:
    * `INTEGER`, `BOOLEAN`: For whole numbers and boolean flags (often 0 or 1).
    * `FLOAT`, `DOUBLE`, `REAL`: For precise numerical data with decimal points.
    * `CHARACTER(num_chars)`, `VARCHAR(num_chars)`, `TEXT`: For string and text data. Differences often relate to storage efficiency and fixed/variable length.
    * `DATE`, `DATETIME`: For storing date and time information.
    * `BLOB`: For binary data.
* **Common Table Constraints Covered**:
    * `PRIMARY KEY`: Ensures unique identification for each row and enforces `NOT NULL`. A table can have only one primary key.
    * `AUTOINCREMENT` (or `AUTO_INCREMENT` in some DBs): Automatically generates a unique, incrementing integer for each new row (often used with `PRIMARY KEY`).
    * `UNIQUE`: Ensures all values in a column are unique across rows, but unlike `PRIMARY KEY`, it allows `NULL` values (unless `NOT NULL` is also specified) and a table can have multiple unique columns.
    * `NOT NULL`: Ensures that a column cannot store `NULL` values; a value must always be provided.
    * `CHECK (expression)`: Enforces that values meet a specific condition (e.g., `salary > 0`).
    * `FOREIGN KEY`: Enforces referential integrity by linking a column to a `PRIMARY KEY` (or `UNIQUE` key) in another table, ensuring relationships between tables are valid.

## 🛠️ Syntax Dissection: The `CREATE TABLE` Statement Structure

The general syntax for the `CREATE TABLE` statement is:

```sql
CREATE TABLE [IF NOT EXISTS] table_name (
    column1_name DataType [CONSTRAINT1] [DEFAULT default_value],
    column2_name DataType [CONSTRAINT2] [DEFAULT default_value],
    -- ...
    [TABLE_CONSTRAINT] -- e.g., FOREIGN KEY, PRIMARY KEY (if composite)
);
