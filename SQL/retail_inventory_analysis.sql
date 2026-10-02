CREATE DATABASE IF NOT EXISTS retail_inventory_db;

USE retail_inventory_db;

DROP TABLE IF EXISTS `Retail Inventory`;

CREATE TABLE `Retail Inventory` (
    `Date` DATETIME,
    `Store ID` VARCHAR(20),
    `Product ID` VARCHAR(20),
    `Category` VARCHAR(50),
    `Region` VARCHAR(50),
    `Inventory Level` INT,
    `Units Sold` INT,
    `Units Ordered` INT,
    `Price` DECIMAL(10,2),
    `Discount` INT,
    `Weather Condition` VARCHAR(50),
    `Promotion` INT,
    `Competitor Pricing` DECIMAL(10,2),
    `Seasonality` VARCHAR(50),
    `Epidemic` INT,
    `Demand` INT,
    `Year` INT,
    `Month` INT,
    `Month_Name` VARCHAR(20),
    `Week` INT,
    `Day` INT,
    `Day_Name` VARCHAR(20),
    `Day_of_Week` INT,
    `Quarter` INT,
    `Revenue` DECIMAL(15,2),
    `Discounted_Price` DECIMAL(15,2),
    `Net_Revenue` DECIMAL(15,2),
    `Inventory_Value` DECIMAL(15,2),
    `Inventory_Demand_Coverage` DECIMAL(15,6),
    `Inventory_to_Sales_Ratio` DECIMAL(15,6),
    `Order_to_Sales_Ratio` DECIMAL(15,6),
    `Order_Sales_Gap` INT,
    `Stockout_Flag` INT,
    `Demand_Exceeds_Inventory` INT,
    `Initial_Overstock_Flag` INT,
    `Initial_Inventory_Risk` VARCHAR(50),
    `Competitor_Price_Difference` DECIMAL(15,2),
    `Competitor_Price_Difference_Percent` DECIMAL(15,6)
);

-- Q1: Find the total number of records in the retail inventory dataset.
SELECT COUNT(*) AS total_rows
FROM `Retail Inventory`;

-- Q2: Find the total number of unique stores.
SELECT COUNT(DISTINCT `Store ID`) AS total_stores
FROM `Retail Inventory`;

-- Q3: Find the total number of unique products.
SELECT COUNT(DISTINCT `Product ID`) AS total_products
FROM `Retail Inventory`;

-- Q4: Find the total number of unique product categories.
SELECT COUNT(DISTINCT `Category`) AS total_categories
FROM `Retail Inventory`;

-- Q5: Find the minimum and maximum dates in the dataset.
SELECT MIN(`Date`) AS start_date,
       MAX(`Date`) AS end_date
FROM `Retail Inventory`;

-- Q6: Calculate total units sold, units ordered, and demand.
SELECT SUM(`Units Sold`) AS total_units_sold,
       SUM(`Units Ordered`) AS total_units_ordered,
       SUM(`Demand`) AS total_demand
FROM `Retail Inventory`;

-- Q7: Calculate total revenue, total net revenue, and average revenue per record.
SELECT SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       AVG(`Revenue`) AS average_revenue
FROM `Retail Inventory`;

-- Q8: Calculate average inventory, total inventory value, and average inventory demand coverage.
SELECT AVG(`Inventory Level`) AS average_inventory,
       SUM(`Inventory Value`) AS total_inventory_value,
       AVG(`Inventory_Demand_Coverage`) AS average_inventory_demand_coverage
FROM `Retail Inventory`;

-- Q9: Calculate average product price, discount, and competitor pricing.
SELECT AVG(`Price`) AS average_price,
       AVG(`Discount`) AS average_discount,
       AVG(`Competitor Pricing`) AS average_competitor_price
FROM `Retail Inventory`;

-- Q10: Analyze revenue, sales, demand, and average inventory by category.
SELECT `Category`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       AVG(`Inventory Level`) AS average_inventory
FROM `Retail Inventory`
GROUP BY `Category`
ORDER BY total_revenue DESC;

-- Q11: Analyze revenue, sales, demand, and average inventory by region.
SELECT `Region`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       AVG(`Inventory Level`) AS average_inventory
FROM `Retail Inventory`
GROUP BY `Region`
ORDER BY total_revenue DESC;

-- Q12: Analyze monthly revenue, net revenue, units sold, and demand.
SELECT `Month`,
       `Month_Name`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand
FROM `Retail Inventory`
GROUP BY `Month`, `Month_Name`
ORDER BY `Month`;

-- Q13: Analyze revenue, sales, demand, and average inventory by store.
SELECT `Store ID`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       AVG(`Inventory Level`) AS average_inventory
FROM `Retail Inventory`
GROUP BY `Store ID`
ORDER BY total_revenue DESC;

-- Q14: Find the top 10 products by revenue.
SELECT `Product ID`,
       `Category`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Net Revenue`) AS total_net_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand
FROM `Retail Inventory`
GROUP BY `Product ID`, `Category`
ORDER BY total_revenue DESC
LIMIT 10;

-- Q15: Calculate the stockout rate for each region.
SELECT `Region`,
       SUM(`Stockout_Flag`) AS stockout_records,
       COUNT(*) AS total_records,
       ROUND(SUM(`Stockout_Flag`) * 100.0 / COUNT(*), 2) AS stockout_rate_percent
FROM `Retail Inventory`
GROUP BY `Region`
ORDER BY stockout_rate_percent DESC;

-- Q16: Calculate the stockout rate for each category.
SELECT `Category`,
       SUM(`Stockout_Flag`) AS stockout_records,
       COUNT(*) AS total_records,
       ROUND(SUM(`Stockout_Flag`) * 100.0 / COUNT(*), 2) AS stockout_rate_percent
FROM `Retail Inventory`
GROUP BY `Category`
ORDER BY stockout_rate_percent DESC;

-- Q17: Analyze the distribution of initial inventory risk.
SELECT `Initial_Inventory_Risk`,
       COUNT(*) AS record_count,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `Retail Inventory`), 2) AS percentage
FROM `Retail Inventory`
GROUP BY `Initial_Inventory_Risk`
ORDER BY record_count DESC;

-- Q18: Analyze inventory risk distribution within each category.
SELECT `Category`,
       `Initial_Inventory_Risk`,
       COUNT(*) AS record_count
FROM `Retail Inventory`
GROUP BY `Category`, `Initial_Inventory_Risk`
ORDER BY `Category`, record_count DESC;

-- Q19: Calculate the number and percentage of records where demand exceeds inventory.
SELECT COUNT(*) AS demand_exceeds_inventory_records,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `Retail Inventory`), 2) AS demand_exceeds_inventory_rate
FROM `Retail Inventory`
WHERE `Demand_Exceeds_Inventory` = 1;

-- Q20: Calculate the number and percentage of overstock records.
SELECT COUNT(*) AS overstock_records,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `Retail Inventory`), 2) AS overstock_rate
FROM `Retail Inventory`
WHERE `Initial_Overstock_Flag` = 1;

-- Q21: Analyze revenue, units sold, and demand under different weather conditions.
SELECT `Weather Condition`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand
FROM `Retail Inventory`
GROUP BY `Weather Condition`
ORDER BY total_revenue DESC;

-- Q22: Analyze revenue, sales, demand, and inventory by seasonality.
SELECT `Seasonality`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       AVG(`Inventory Level`) AS average_inventory
FROM `Retail Inventory`
GROUP BY `Seasonality`
ORDER BY total_revenue DESC;

-- Q23: Compare revenue, sales, demand, and average discount by promotion status.
SELECT `Promotion`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       AVG(`Discount`) AS average_discount
FROM `Retail Inventory`
GROUP BY `Promotion`
ORDER BY total_revenue DESC;

-- Q24: Identify products with stockouts, low inventory, or overstock risk.
SELECT `Product ID`,
       `Category`,
       `Inventory Level`,
       `Units Sold`,
       `Demand`,
       `Stockout_Flag`,
       `Initial_Inventory_Risk`
FROM `Retail Inventory`
WHERE `Stockout_Flag` = 1
   OR `Initial_Inventory_Risk` IN ('Low Inventory', 'Overstock')
ORDER BY `Stockout_Flag` DESC, `Demand` DESC;

-- Q25: Find the top 10 products by revenue with pricing information.
SELECT `Product ID`,
       `Category`,
       SUM(`Revenue`) AS total_revenue,
       SUM(`Units Sold`) AS units_sold,
       AVG(`Price`) AS average_price,
       AVG(`Competitor Pricing`) AS average_competitor_price,
       AVG(`Competitor_Price_Difference_Percent`) AS average_price_difference_percent
FROM `Retail Inventory`
GROUP BY `Product ID`, `Category`
ORDER BY total_revenue DESC
LIMIT 10;

-- Q26: Compare competitor price differences across categories.
SELECT `Category`,
       AVG(`Competitor_Price_Difference`) AS average_price_difference,
       AVG(`Competitor_Price_Difference_Percent`) AS average_price_difference_percent
FROM `Retail Inventory`
GROUP BY `Category`
ORDER BY average_price_difference_percent DESC;

-- Q27: Compare units ordered, units sold, demand, and order-sales gap by region.
SELECT `Region`,
       SUM(`Units Ordered`) AS units_ordered,
       SUM(`Units Sold`) AS units_sold,
       SUM(`Demand`) AS total_demand,
       SUM(`Order_Sales_Gap`) AS total_order_sales_gap
FROM `Retail Inventory`
GROUP BY `Region`
ORDER BY total_order_sales_gap DESC;
