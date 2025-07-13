SELECT * FROM Customer_Data;
SELECT * FROM prod_Churn;
-- Gender Distribution
SELECT Gender, COUNT(Gender) AS Totalcount,
CAST (ROUND (COUNT(Gender) * 100 / (SELECT  COUNT (*) FROM Customer_Data), 2) AS VARCHAR) +'%' AS Percentage
FROM Customer_Data
GROUP BY Gender;

-- Contract Distribution
SELECT Contract, COUNT(Contract) AS Totalcount,
CAST (ROUND (COUNT(Contract) * 100 / (SELECT  COUNT (*) FROM Customer_Data), 2) AS VARCHAR) +'%' AS Percentage
FROM Customer_Data
GROUP BY Contract;


-- Married Distribution
SELECT Married, COUNT(Married) AS Totalcount,
CAST (ROUND (COUNT(Married) * 100 / (SELECT  COUNT (*) FROM Customer_Data), 2) AS VARCHAR) +'%' AS Percentage
FROM Customer_Data
GROUP BY Married;

-- State Distribution
SELECT  TOP 5 
State,
COUNT(State) AS Totalcount,
CAST (ROUND (COUNT(State) * 100 / (SELECT  COUNT (*) FROM Customer_Data), 2) AS VARCHAR) +'%' AS Percentage
FROM Customer_Data
GROUP BY State
ORDER BY Percentage DESC;

-- Customer Status wise Revenue 
SELECT Customer_status,
COUNT(Customer_status) AS Total_Count,
SUM(Total_Revenue) AS Total_Revenue,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM Customer_Data) * 100 AS RevenuePercentage
FROM Customer_Data 
GROUP BY Customer_status;
