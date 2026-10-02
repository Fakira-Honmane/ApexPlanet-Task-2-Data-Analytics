USE apexplanet_task2;
SELECT COUNT(*) AS total_rows
FROM sales_data;
SELECT COUNT(*) AS total_rows
FROM sales_data;

-- Question 1: What is the total sales amount?
SELECT SUM(Total_Sales) AS Total_Sales
FROM sales_data;

-- Question 2: Which product categories generate the highest sales?
SELECT Category, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Question 3: How do sales differ by gender?
SELECT Gender, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY Gender
ORDER BY Total_Sales DESC;

-- Question 4: Which 5 products generate the highest sales?
SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

-- Question 5: Which cities generate the highest sales?
SELECT City, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC;

-- Question 6: What is the average sales value per record?
SELECT AVG(Total_Sales) AS Average_Sales
FROM sales_data;


-- Question 7: What is the total quantity of products sold?
SELECT SUM(Quantity) AS Total_Quantity
FROM sales_data;