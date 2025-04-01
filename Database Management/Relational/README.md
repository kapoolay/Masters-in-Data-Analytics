# WGU-Portfolio

![My Image]("Sales Records ERD.png")

📦 EcoMart Relational Database Project

This project was completed as part of the WGU D597: Relational Database Design and Implementation course. It involves designing and implementing a relational database solution for EcoMart, a fictional online marketplace focused on sustainable and eco-friendly products.
📌 Project Overview

EcoMart needed a scalable, organized way to manage a growing volume of product and sales data across multiple categories and regions. The existing data—structured as a flat CSV file with 100,000+ sales records—was difficult to analyze efficiently.
🧩 Solution

A normalized relational database was designed and implemented using PostgreSQL hosted locally via pgAdmin 4. The schema includes four core tables:

    Orders – stores order-level information

    OrderDetails – captures line-level sales data

    ItemTypes – categorizes products

    Countries – supports geographic reporting

The database supports complex queries across product performance, regional profitability, and sales trends.
🔍 Key Features

    ✅ Data normalization for reduced redundancy and improved integrity

    ✅ Primary key and foreign key relationships for relational structure

    ✅ Query optimization using best practices for indexing and aggregation

    ✅ SQL scripts for schema creation, data import, and analytical queries

    ✅ Real-world dataset with over 100,000 records

🛠️ Tools Used

    PostgreSQL

    pgAdmin 4

    SQL (DDL & DML)

    CSV dataset (100K Sales Records)

📊 Sample Queries

    Top 5 performing item types by total revenue

    Total profit by region

    Monthly sales volume by item type