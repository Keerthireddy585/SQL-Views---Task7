USE JOINS;

-- simple view: customer orders
CREATE VIEW Customer_orders AS
SELECT c.Customer_ID, o.Product_Name, o.Order_date
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT * FROM Customer_orders;


-- Aggregated view: orders per customers
CREATE VIEW Orders_per_customers AS
SELECT c.Customer_ID, COUNT(o.Order_ID) AS Total_orders
FROM Customers c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY Customer_ID;

SELECT * FROM Orders_per_customers;


-- Filtered View: US customers only
CREATE VIEW US_customers_only AS
SELECT c.Customer_ID, c.Customer_Name, c.Country
FROM Customers c
WHERE c.Country = "USA";

SELECT * FROM US_customers_only;


-- Secure view: hiding sensitive column
-- if u dont want to expose customer_id
CREATE VIEW customer_public_info AS
SELECT Customer_Name, Country
FROM Customers;

SELECT * FROM customer_public_info;

-- Dropping a view
DROP VIEW IF EXISTS Customer_orders;

