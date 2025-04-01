-- Create database instance
CREATE DATABASE "D597 Task 1";

-- Create Countries table
CREATE TABLE Countries (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    CountryName VARCHAR(100),
    Region VARCHAR(100)
);

-- Create ItemTypes table
CREATE TABLE ItemTypes (
    ItemTypeID INT IDENTITY(1,1) PRIMARY KEY,
    ItemTypeName VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID BIGINT PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    OrderPriority CHAR(1),
    SalesChannel VARCHAR(20),
    CountryID INT FOREIGN KEY REFERENCES Countries(CountryID)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID BIGINT FOREIGN KEY REFERENCES Orders(OrderID),
    ItemTypeID INT FOREIGN KEY REFERENCES ItemTypes(ItemTypeID),
    UnitsSold INT,
    UnitPrice DECIMAL(10,2),
    UnitCost DECIMAL(10,2),
    TotalRevenue DECIMAL(18,2),
    TotalCost DECIMAL(18,2),
    TotalProfit DECIMAL(18,2)
);
