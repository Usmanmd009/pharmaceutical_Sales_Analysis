-- removing the ngeative sign from the Price column 
UPDATE 
	FactSales
SET Price = ABS(Price);

-- removing the ngeative sign from the Quantity column 
UPDATE 
	FactSales
SET Quantity = ABS(Quantity);

-- removing the ngeative sign from the Sales column 
UPDATE 
	FactSales
SET Sales = ABS(Sales);

select * from FactSales
where Sales is  not NULL;

-- Checking for null values
PRAGMA table_info(FactSales);

UPDATE DimLocation
set City = replace(City, '�', '');

