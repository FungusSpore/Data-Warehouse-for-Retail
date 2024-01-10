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

OLAP Diagram
OLAP Database

OLAP Database
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

    Dim_Date
        Table Input (Orders)
        Calculator Step (Separate into day, month, year)
        Table Output
        Example: Load Date Process

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





























