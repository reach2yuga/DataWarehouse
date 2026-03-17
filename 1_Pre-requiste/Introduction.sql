🚀 Step 1: Understand the Business (MOST IMPORTANT)
Before data modeling, think like a business analyst.

🏭 Metro Supply Chain deals with:

Warehousing
Inventory management
Order fulfillment
Transportation & logistics

---------------------------------------------------

🎯 Step 2: Define Your Use Case

We need a clear project story (you’ll use this in interviews 👇)

👉 Project Title:
“Designing a Scalable Data Warehouse for Supply Chain Analytics in Snowflake”

📊 Business Problem:
Track inventory across warehouses
Monitor order shipments
Analyze delivery performance
Optimize stock levels

-----------------------------------------------------------------------
🧠 Step 3: Identify Core Business Processes

Each process = one fact table

🔑 Main Processes:
Orders
Shipments
Inventory
--------------------------------------------------------------------------

⭐ Step 4: Decide Fact Tables (VERY IMPORTANT)

We’ll design 3 fact tables:

🔹 1. Fact_Orders

👉 Grain: 1 row = 1 order line item

Columns:
order_id
product_id
customer_id
order_date
quantity
order_amount

---------------------------------------------------------------------------

🔹 2. Fact_Shipments

👉 Grain: 1 row = 1 shipment

Columns:
shipment_id
order_id
warehouse_id
shipment_date
delivery_date
shipping_cost
delivery_status

---------------------------------------------------------------------------

🔹 3. Fact_Inventory (VERY IMPORTANT FOR SUPPLY CHAIN)

👉 Grain: 1 row = daily stock per product per warehouse

Columns:
product_id
warehouse_id
date
stock_on_hand
stock_in
stock_out

--------------------------------------------------------------------------

🧱 Step 5: Dimension Tables

These give context to facts 👇

🔸 Dim_Product
product_id
product_name
category
brand

---------------------------------------------------------------------------

🔸 Dim_Customer

customer_id
name
location
segment

🔸 Dim_Warehouse
warehouse_id
warehouse_name
city
capacity

🔸 Dim_Date
date
day
month
year

🔸 Dim_Supplier (optional but powerful)
supplier_id
supplier_name
country

--------------------------------------------------------------------------

🧩 Step 6: Star Schema (Your Core Design)

You will have:
Fact tables in center
Dimension tables around

----------------------------------------------------------------------------

🔥 Step 7: Advanced Concepts (YOU MUST INCLUDE)

To stand out:
✅ 1. Slowly Changing Dimension (SCD Type 2)

Use in:
Dim_Customer
Dim_Product

Columns:
effective_date
end_date
is_current

-------------------------------------------------------------------------------

✅ 2. Surrogate Keys

Use instead of natural keys

Example:
customer_key (not customer_id)

✅ 3. Data Layers in Snowflake
Design like this:
RAW → staging tables
ODS → cleaned data
DW → star schema
MART → reporting layer