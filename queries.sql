-- Revenue Analysis
SELECT SUM(Quantity * UnitPrice) AS Total_Revenue
FROM sales;

-- Monthly Revenue Trend
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
    SUM(Quantity * UnitPrice) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

-- Top Customers
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS Total_Spent
FROM sales
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

-- Country Analysis
SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS Revenue
FROM sales
GROUP BY Country
ORDER BY Revenue DESC;

-- Top Products
SELECT 
    Description,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;
