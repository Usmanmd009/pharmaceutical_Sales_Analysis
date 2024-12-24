                         --Sales Performance Analysis

-- • What are the total sales for each product? (Identify the top-selling products

SELECT Product_Name, sum(Sales) total_sales
from FactSales f
JOIN
DimProducts p 
on f. product_id = p.product_id
GROUP by Product_Name
ORDER by total_sales;

-- • How do sales vary month by month within a specific year? (Analyze monthly sales trends)

SELECT Month, Year,sum(Sales) total_sales
FROM FactSales
GROUP by 1,2
ORDER by total_sales;

                             --2. Sales by Location
							 
  --• Which cities have the highest total sales? (Identify top cities by sales volume)
  SELECT City, sum(Sales) Top_cities_by_sales_volume
  from FactSales f
  JOIN 
  DimLocation l
  on f.location_id = l.location_id
  GROUP by 1
  ORDER by Top_cities_by_sales_volume
  DESC;
  -- How do sales compare across different countries? (Analyze sales performance by country)
SELECT Country,sum(Sales) sales_performance
from FactSales f 
JOIN 
DimLocation l 
on f.location_id = l.location_id
GROUP by 1 
ORDER by sales_performance
DESC;

                 -- 3. Customer Segmentation
				 
 -- What is the total sales by customer type (e.g., Hospitals, Pharmacies)?
 SELECT Channel, sum(Sales) total_sales
 from FactSales 
 GROUP by 1
 ORDER by total_sales
 DESC;
 
  -- How do sales differ across various sectors (e.g., Government vs. Private buyers)?
  SELECT Sub_channel, sum(Sales) total_sales
 from FactSales 
 GROUP by 1
 ORDER by total_sales
 DESC;
 
 
                           -- 4 Product Analysis
							
--• What are the top-selling products within each drug class?
SELECT Product_Class, sum(Sales) top_selling_products
from FactSales f 
RIGHT JOIN
DimProductClass p
GROUP by Product_Class
ORDER by top_selling_products;


 --• What is the average price for each class of drugs? (Analyze pricing by product class)
 SELECT Product_Class,avg(Price) avg_price
 from FactSales f 
RIGHT JOIN
DimProductClass p
GROUP by Product_Class
ORDER by avg_price;
 
                                  --5. Sales Representative Performance
 --• Who are the top-performing sales representatives based on total sales?
 SELECT SalesRep, sum(Sales) top_performing_sales
 from FactSales f
 JOIN 
 DimSalesRep s
 on f.SalesRep_id = s.SalesRep_id
 GROUP by 1
 ORDER by top_performing_sales;
 
--• How does sales performance vary across different sales teams?
SELECT SalesTeam , sum(Sales) sales_performance
from FactSales f 
JOIN 
DimSalesTeam t 
on f.SalesTeam_id = t.SalesTeam_id
GROUP by 1 
ORDER by sales_performance;

                              --6. Time Series Analysis
										  
 --• What is the year-over-year growth in total sales? (Measure growth trends over the years)
 SELECT Year, sum(Sales) total_sales_per_year
 from FactSales
 GROUP by 1 
 ORDER by total_sales_per_year
 DESC;
 
 --• Which months consistently have the highest sales volume? (Identify seasonal sales
patterns)
SELECT Month, sum(Sales) Monthly_sales
from FactSales
GROUP by 1 
ORDER by  Monthly_sales
DESC;