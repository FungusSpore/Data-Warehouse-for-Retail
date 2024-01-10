 Data-Warehouse-for-Retail

Fact Table

![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/85bafe5b-a99a-49b0-8a23-1385b35b0b4d)
Figure 1- Class Diagram

Goal: 
Track sale performance and inventory level of each product by branch over a year.

FACT	Sales, Inventory
Measurements	Sum(product), sum(branchInventory)
Dimensions	Who? Customer(custID, jwID, cust_name)
	What? Product(procID, jwID, name, description)
	Where? Branch(branchID, jwID, Street, City, State)
	When? Date(dateID,day, month, year)

Dimensional Modeling 
![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/175543df-98da-45ea-bf23-c81f3a069d96)
Figure 2- OLAP diagram

OLAP	OLTP
Dimensional Table	Description	Column	Data Type	Table Source	Column Source
Dim_Product	This table stores attributes of products sold by the company and is used to join with the fact_sales and fact_inventory table.	dim_procID	SMALLINT	Product	procID
		jwID	SMALLIN		procID
		proc_name	VARCHAR(50)		name
		proc_description	VARCHAR(200)		description
Dim_Date	This table stores the date of sale that took place by getting its date from Orders. It is also used to join fact_sales and fact_inventory table	dateID	INT(5)	Orders	
		dt	DATE		orderDate
		dy	SMALLINT		
		mth	SMALLINT		
		yr	SMALLINT		
Dim_Branch	This table stores the attributes of branch where sale took place and products currently are stored. It also used to join fact_sales and fact_inventory table	dim_branchID	SMALLINT	Branch	branchID
		jwID	SMALLINT		branchID
		street_name	VARCHAR(50)		street
		city_name	VARCHAR(50)		city
		state_name	VARCHAR(50)		state
Dim_Customer	This table is used to store the attributes of customer that the sale was made to. It is also used to join fact_sale	dim_custID	SMALLINT	Customer	custID
		jwID	SMALLINT		custID
		cust_name	VARCHAR(50)		name
fact_inventory	This is a table that contains information about the inventory levels of products in each branch.	Dim_prodID	SMALLINT		
		dateID	DATE		
		Dim_branchID	SMALLINT		
		inventoryLevel	INT		
Fact_sales	This is a table that contains information about the sales that took place.	Dim_procID	SMALLINT		
		dateID	DATE		
		Dim_branchID	SMALLINT		
		Dim_custID	SMALLINT		
		totalSales	INT		

Olap Design and Implementation
![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/3901ef89-f747-45ae-9495-f9588ae3da21)
Figure 3- OLAP database


Data Warehouse Process
i)	Firstly, I will start loading the dimensional tables by creating a new transformation. In the new transformation I will first add a generate rows step to generate stream fields with default values. Next, a table output step will be added to insert the default values into specified table. After that, a table input step is added to connect to the source database containing the data for the dimensional tables. Right after that, Combination lookup/update step will be added and connected to update step. This allows the commination lookup/update step to find the appropriate key fields and update it to the specified dimensional table. An example for dim_customer will be shown below
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/5f45d6a7-d74f-499c-af3e-eee88afd5c20)

Figure 4- load customer
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/0e2cd099-886a-45d7-8a2e-c7658ec81486)

Figure 5- generate rows customer
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/ef8e4034-b094-4f0d-8106-5ffda0ddc98b)

Figure 6- customer output
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/5d21c5b9-5985-4246-a5f7-b1c7ea689083)

Figure 7 table input SQL
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/8b7391ea-b50b-4ffc-bec8-f71117910080)

Figure 8 customer lookup



As for the dim_date table, a special process is created for it as it will be getting a single field from orders table. It starts with a table input step to get the orderDate from Orders then with the calculator step, it can be separated into day, month, year. This is done by using the calculation day of month of date A, Month of day, and year of date A respectively. Finally, a table output step will be used to put the values into the dim_date table.

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/acc0d105-33ea-4aab-8b3e-5025ca8310a5)

Figure 9 load date

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/e82bc9b8-60b0-400d-8be5-765162abebd2)

Figure 10 table input SQL

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/dad6e081-43a5-4c48-b5c3-b133191860b4)

Figure 11 Date calculator

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/6be9b626-a850-4a49-9479-a74fdb7ea481)

Figure 12 table output date



ii)	After loading the dimensional tables with data, Fact tables will be next. This starts with a table input step where it gets fields from the database using the SQL queries. Next using the fields obtained, lookup steps are added for each dimension table used for each fact table. Once all lookups are done load fact table step will then load all the dimensional fields to the fact table. Fact_inventory will be used as an example. 

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/62522fc3-92fc-47e8-801f-09339db60ee7)

Figure 13 fact inventory SQL

SELECT Product.prodID, Branch.branchID, Orders.orderDate, ProductStored.branchInventory
FROM Product, Branch, Orders, ProductStored
WHERE Branch.branchID=ProductStored.branchID
and Product.prodID=ProductStored.prodID
and Product.prodID=Orders.prodID

Here I am getting the fields I need from the OLTP database by matching the tables primary and foreign keys to ensure they are related. 

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/3336422a-a0e5-4de1-94cf-85bbd2cbf8c8)

Figure 14 dim table lookup

Here with the connection to dw_wjw established, I used the field I gotten from the OLTP to match the value with the dim_branch so a return value that is related with the other tables can be returned and loaded into the fact_table. This process is repeated for each foreign key in the fact table.

 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/0cdcb9a9-d4a5-40fc-aa50-836656469dec)

Figure 15 loud fact table
Once all the values are obtained, it is then used to load into the appropriate columns in the fact table.
iii)	Here the data warehouse is loaded into tableau with the MySQL connection.
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/bb3ccf28-f912-40ff-8958-03c28542c1f0)

Figure 16 list of tables pt1
  ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/fd452e85-fdf8-4ca3-b983-6a9c566f8295)

Figure 17 list of tables pt2
 ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/b99e49e5-cd58-4991-b988-f8568d7c6f07)

Figure 18 table connections
Here the connections are made by using fact inventory left join and fact sales right join with dim_branch, dim_date, and dim_product. Fact_sales also left join with dim_customer.


![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/ff124efd-58c5-4870-a75a-630abc3c64d2)
Figure 19 dashboard

Here the dashboard is split into four sections. In the first section, branch location, there are states highlighted in Malaysia as there is one branch per state. In the second section, there is the product sales bar chart. It shows the total sales of each of the products. These two sections act as the filters for the rest of the sections. At the bottom left, there is the 3rd section which tells us the inventory level for products by month. To the right we have total sales of product by month. When a filter is selected on the first 2 sections, the bottom 2 visualizations will then change accordingly to fit the filter which could be inventory levels and total sales of a branch in Perak. It could also change to the total sales of a specific product in all states. 





























