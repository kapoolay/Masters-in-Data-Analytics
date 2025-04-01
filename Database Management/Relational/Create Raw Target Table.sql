CREATE TABLE SalesRaw (
    Region VARCHAR(100),
    Country VARCHAR(100),
    ItemType VARCHAR(100),
    SalesChannel VARCHAR(20),
    OrderPriority CHAR(1),
    OrderDate VARCHAR(20),
    OrderID BIGINT,
    ShipDate VARCHAR(20),
    UnitsSold INT,
    UnitPrice NUMERIC(10,2),
    UnitCost NUMERIC(10,2),
    TotalRevenue NUMERIC(18,2),
    TotalCost NUMERIC(18,2),
    TotalProfit NUMERIC(18,2)
);