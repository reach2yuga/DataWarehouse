# 🚀 Supply Chain Data Warehouse Design using Snowflake

## 📌 Project Overview

This project focuses on designing a scalable and efficient **data warehouse for supply chain analytics** using Snowflake. It simulates a real-world supply chain company handling **orders, shipments, and inventory management**.

The goal is to build a robust **data model (Star Schema)** to support business reporting, analytics, and decision-making.

---

## 🎯 Business Objective

The data warehouse is designed to help answer key business questions:

* How much inventory is available across warehouses?
* What is the order fulfillment performance?
* How efficient are shipments and deliveries?
* Which products and customers drive the most revenue?

---

## 🏭 Domain

**Supply Chain & Logistics**

Key areas covered:

* Order Management
* Inventory Tracking
* Shipment & Delivery Monitoring

---

## 🧱 Architecture Overview

```
Source Systems → Staging (RAW) → ODS (Cleaned) → Data Warehouse (DW) → Reporting
```

### Layers:

* **RAW Layer**: Ingest raw data from source systems
* **ODS Layer**: Cleaned and standardized data
* **DW Layer**: Star schema (Fact & Dimension tables)
* **MART Layer (Optional)**: Business-specific reporting tables

---

## ⭐ Data Modeling Approach

### 🔹 Star Schema Design

The project uses a **Star Schema** to optimize query performance and simplify reporting.

---

## 📊 Fact Tables

### 1. Fact_Orders

* Grain: One row per order line item
* Captures customer orders

**Columns:**

* order_id
* product_id
* customer_id
* order_date
* quantity
* order_amount

---

### 2. Fact_Shipments

* Grain: One row per shipment
* Tracks delivery and logistics

**Columns:**

* shipment_id
* order_id
* warehouse_id
* shipment_date
* delivery_date
* shipping_cost
* delivery_status

---

### 3. Fact_Inventory

* Grain: Daily inventory per product per warehouse
* Tracks stock movement

**Columns:**

* product_id
* warehouse_id
* date
* stock_on_hand
* stock_in
* stock_out

---

## 📐 Dimension Tables

### Dim_Product

* product_id
* product_name
* category
* brand

---

### Dim_Customer

* customer_id
* name
* location
* segment

---

### Dim_Warehouse

* warehouse_id
* warehouse_name
* city
* capacity

---

### Dim_Date

* date
* day
* month
* year

---

### Dim_Supplier (Optional)

* supplier_id
* supplier_name
* country

---

## 🔥 Advanced Data Modeling Concepts

### ✅ Slowly Changing Dimensions (SCD Type 2)

Implemented in:

* Dim_Customer
* Dim_Product

**Columns:**

* effective_date
* end_date
* is_current

---

### ✅ Surrogate Keys

* Used for all dimension tables
* Improves performance and maintains history

---

### ✅ Data Granularity

* Clearly defined grain for each fact table ensures consistency and accuracy

---

## 🛠️ Technologies Used

* **Snowflake** – Data Warehouse
* **SQL** – Data transformation
* **AWS S3 (Optional)** – Data staging
* **DBT (Optional)** – Data transformation & modeling

---

## 📈 Sample Use Cases

* Inventory level tracking across warehouses
* Order fulfillment analysis
* Shipment delay analysis
* Customer purchase behavior analysis

---

## 🧪 Future Enhancements

* Add **Returns / Reverse Logistics**
* Implement **Real-time data ingestion (Snowpipe)**
* Build **Dashboards using Power BI / Tableau**
* Add **Data Quality Checks & Monitoring**

---

## 💡 Interview Explanation

“I designed a Snowflake-based data warehouse for a supply chain system.
The model includes fact tables for orders, shipments, and inventory, along with dimension tables like customer, product, and warehouse.
I implemented a star schema for analytical performance and used SCD Type 2 to track historical changes.”

---

## 📂 Project Structure

```
/project
  /sql
    create_tables.sql
    transformations.sql
  /data
    sample_data.csv
  README.md
```

---

## 🙌 Conclusion

This project demonstrates:

* Strong understanding of **data modeling**
* Hands-on experience with **Snowflake architecture**
* Ability to design **real-world data warehouse solutions**

---

⭐ If you found this helpful, feel free to fork and enhance!
