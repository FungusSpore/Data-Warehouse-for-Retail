Data Warehouse for Retail
Overview

This project aims to track the sale performance and inventory levels of products by branch over a year. The data warehouse utilizes a dimensional modeling approach and OLAP design for efficient querying.
Data Model
Fact Table

    FACT: Sales, Inventory
    Measurements: Sum(product), Sum(branchInventory)

Dimensions

    Who?
        Customer(custID, jwID, cust_name)

    What?
        Product(procID, jwID, name, description)

    Where?
        Branch(branchID, jwID, Street, City, State)

    When?
        Date(dateID, day, month, year)

Dimensional Modeling

![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/3374cc1c-24c6-4fc4-ba2a-4a5273574682)


OLAP Database

![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/8552cb83-2226-41df-b395-a9da668483fb)

Dimension Tables

    Dim_Product
    Dim_Date
    Dim_Branch
    Dim_Customer

Fact Tables

    Fact_Inventory
    Fact_Sales

Data Warehouse Process
Loading Dimensional Tables

    Dim_Customer
        Generate Rows
        Table Output
        Table Input
        Combination Lookup/Update
        Example: Load Customer Process
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/b4b5080c-603a-43c9-a493-5649bdc45327)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/97a617c2-d749-46b0-94c5-153c0ad171a4)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/5e64009c-cbd2-4830-89ff-ce0fa97a1092)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/aa2025ba-8c33-4871-b915-b70abbe2aefe)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/435bc097-710a-4d71-aeb7-6772274b3b4f)


    Dim_Date
        Table Input (Orders)
        Calculator Step (Separate into day, month, year)
        Table Output
        Example: Load Date Process
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/267654fe-2649-48c1-8c54-ce57b63c3626)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/1ee96f99-f9c6-4337-9604-9f4c9266c8e1)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/8ce59562-0f3f-4655-a1db-fdf24def4bee)
        ![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/895df72c-c55a-4894-a483-d953ac2687e3)


Loading Fact Tables

    Fact_Inventory
        Table Input (SQL Query)
        Lookup Steps (Dimension Tables)
        Load Fact Table Step
        Example: Fact Inventory SQL

    Fact_Sales
        Similar process as Fact_Inventory

Loading into Tableau

    Establish MySQL Connection
    Visualize data with appropriate joins
    Example: Tableau Dashboard

Tableau Dashboard

    Branch Location Map
    Product Sales Bar Chart
    Inventory Level by Month
    Total Sales by Month
    

Selecting filters in the first two sections dynamically updates the bottom visualizations.
![image](https://github.com/FungusSpore/Data-Warehouse-for-Retail/assets/108650061/7178ca52-fbc1-4d06-b822-54a583b081d9)






























