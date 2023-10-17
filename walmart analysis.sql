SELECT *
FROM [dbo].['walmart-sales-dataset-of-45stor$']

--AVG AND SUM  SALES PER STORE AND in normal days 
SELECT Store, AVG(Weekly_sales) AS AVG_sales ,SUM(Weekly_Sales) AS total_sales
FROM [dbo].['walmart-sales-dataset-of-45stor$']
WHERE [Holiday_Flag] = 0
GROUP BY Store
ORDER BY SUM(Weekly_Sales) desc ;

--AVG AND SUM  SALES PER STORE AND in holidays 
SELECT Store, AVG(Weekly_sales) AS AVG_sales ,SUM(Weekly_Sales) AS total_sales
FROM [dbo].['walmart-sales-dataset-of-45stor$']
WHERE [Holiday_Flag] = 1
GROUP BY Store
ORDER BY SUM(Weekly_Sales) desc ;
----
SELECT MAX([Temperature]), AVG([Temperature]),MIN([Temperature]),AVG([Unemployment]),AVG(Fuel_Price)
FROM [dbo].['walmart-sales-dataset-of-45stor$']


SELECT Store, AVG(Weekly_sales) AS AVG_sales ,SUM(Weekly_Sales) AS total_sales
FROM [dbo].['walmart-sales-dataset-of-45stor$']
WHERE [Temperature] > 60 
GROUP BY Store
ORDER BY SUM(Weekly_Sales) desc ;

--------------------------------
SELECT Store, AVG(Weekly_sales) AS AVG_sales ,SUM(Weekly_Sales) AS total_sales
FROM [dbo].['walmart-sales-dataset-of-45stor$']
WHERE [Temperature] < 60 
GROUP BY Store
ORDER BY SUM(Weekly_Sales) desc;