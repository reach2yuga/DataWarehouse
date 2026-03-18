🔑 1. Primary Key (PK)
📌 Definition:

A Primary Key uniquely identifies each record in a table.

🧠 Key Points:
Cannot be NULL
Must be unique
One per table
👉 Each product is uniquely identified by product_id
-------------------------------------------------------------------------
🔑 2. Foreign Key (FK)
📌 Definition:

A Foreign Key links one table to another.

🧠 Why important:

Maintains relationships
Enables joins

🏭 Example:

Fact_Orders
order_id
product_id (FK → Dim_Product)
customer_id (FK → Dim_Customer)

👉 Fact table connects to dimension tables using FKs
----------------------------------------------------------------------------
🔑 3. Composite Key
📌 Definition:

A key made of multiple columns together to uniquely identify a record.

🏭 Example:

Fact_Inventory

product_id + warehouse_id + date

👉 Together they define:
✔ Stock of a product
✔ In a specific warehouse
✔ On a specific date

------------------------------------------------------------------------------

🔑 4. Candidate Key
📌 Definition:

All possible columns that can uniquely identify a record.

🏭 Example:

In Customer table:
customer_id
email

👉 Both can uniquely identify → both are candidate keys
👉 One becomes Primary Key

-------------------------------------------------------------------------------
🔑 5. Alternate Key
📌 Definition:

Candidate keys that are not selected as primary key

🏭 Example:
customer_id (PK)
email (Alternate Key)

--------------------------------------------------------------------------------

🔑 6. Surrogate Key ⭐ (VERY IMPORTANT FOR INTERVIEWS)
📌 Definition:

A system-generated key (no business meaning)

🧠 Why we use:
Better performance
Handles history (SCD)
Avoids dependency on source system

----------------------------------------------------------------------------------

🔑 7. Natural Key
📌 Definition:

A real-world business identifier

🏭 Example:
customer_id
product_code
order_number

👉 Comes from source system

----------------------------------------------------------------------------------

🔑 8. Foreign Key in Fact Table (Important Concept)

In Star Schema:
Fact table → contains Foreign Keys
Dimension tables → contain Primary Keys

------------------------------------------------------------------------------------