# Task 7 - SQL Views

## Overview
This task demonstrates how to create and use SQL views to simplify queries, abstract data, and improve security.

## Tools Used
- MySQL Workbench 

## Tables Used
- Customers (Customer_ID, Customer_Name, Country)
- Orders (Order_ID, Customer_ID, Product_Name, Order_Date)

## Views Created
1. **Customer_orders** - Join of customers and their orders  
2. **Orders_per_customers** - Aggregated orders per customer  
3. **US_customers_only** - Filtered view (only US customers)  
4. **Customer_public_info** - Hides Customer_ID for security  

## How to Run
1. Ensure `Customers` and `Orders` tables exist (from Task 5).  
2. Open **Task7.sql** in MySQL Workbench.
3. Run the script to create the views.  
4. Query each view using `SELECT * FROM view_name;`.  
5. Check screenshots in the `screenshots/` folder for output.  

## Dropping a View
```sql
DROP VIEW IF EXISTS CustomerOrders;
