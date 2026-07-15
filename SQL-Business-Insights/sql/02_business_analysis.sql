-- =====================================================
-- SQL Business Insights Project
-- File: 02_business_analysis.sql
-- =====================================================

-- 1. Total Sales
SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore;

-- 2. Total Profit
SELECT ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;

-- 3. Total Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 4. Total Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 5. Total Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 6. Top 10 States by Sales
SELECT
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- 7. Top 10 Cities by Sales
SELECT
    City,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- 8. Most Profitable Sub-Categories
SELECT
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

-- 9. Least Profitable Sub-Categories
SELECT
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC;

-- 10. Average Sales per Transaction
SELECT
    ROUND(AVG(Sales), 2) AS Average_Sales
FROM superstore;

-- 11. Highest Discount by Category
SELECT
    Category,
    ROUND(MAX(Discount), 2) AS Highest_Discount
FROM superstore
GROUP BY Category;

-- 12. Lowest Profit Recorded
SELECT
    MIN(Profit) AS Lowest_Profit
FROM superstore;