CREATE TABLE 
	DimLocation(
		location_id INTEGER PRIMARY KEY,
		City TEXT,
		Country TEXT,
		Latitude REAl,
		Longitude REAL
);


CREATE TABLE 
	DimCustomers(
		customer_id	INTEGER PRIMARY KEY,
		Customer_Name TEXT,
		location_id INTEGER,
		FOREIGN KEY (location_id) REFERENCES DimLocation(location_id)
);

CREATE TABLE 
	DimProducts(
		product_id INTEGER PRIMARY KEY,
		Product_Name TEXT
);

CREATE TABLE 
	DimProductClass(
		productClass_id INTEGER PRIMARY KEY,
		Product_Class TEXT
);

CREATE TABLE 
	DimSalesRep(
		SalesRep_id INTEGER PRIMARY KEY,
		SalesRep TEXT
);

CREATE TABLE 
	DimSalesTeam(
		SalesTeam_id INTEGER PRIMARY KEY,
		SalesTeam TEXT
);



CREATE TABLE 
	DimSalesTeamManager(
		manager_id INTEGER PRIMARY KEY,
		Manager TEXT
);


CREATE TABLE 
	FactSales(
		Distributor TEXT,
		Channel TEXT,
		Sub_channel	TEXT,
		Quantity INTEGER,
		Price INTEGER,
		Sales INTEGER,	
		Month TEXT,
		Year INTEGER,	
		customer_id	INTEGER,
		location_id INTEGER,	
		productClass_id	INTEGER,
		SalesRep_id	INTEGER,
		SalesTeam_id INTEGER,
		manager_id INTEGER,
		product_id INTEGER,
		FOREIGN KEY (customer_id) REFERENCES DimCustomers(customer_id),
		FOREIGN KEY (location_id) REFERENCES DimLocation(location_id),
		FOREIGN KEY (productClass_id) REFERENCES DimProductClass(productClass_id),
		FOREIGN KEY (product_id) REFERENCES DimProducts(product_id),
		FOREIGN KEY (SalesRep_id) REFERENCES DimSalesRep(SalesRep_id),
		FOREIGN KEY (SalesTeam_id) REFERENCES DimSalesTeam(SalesTeam_id),
		FOREIGN KEY (manager_id) REFERENCES DimSalesTeamManager(manager_id)
);









	

		


