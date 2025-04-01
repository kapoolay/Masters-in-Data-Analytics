-- Insert unique countries and regions
INSERT INTO Countries (CountryName, Region)
SELECT DISTINCT
    Country,
    Region
FROM SalesRaw;

-- Insert unique item types
INSERT INTO ItemTypes (ItemTypeName)
SELECT DISTINCT
    ItemType
FROM SalesRaw;

-- Insert orders
INSERT INTO Orders (
    OrderID,
    OrderDate,
    ShipDate,
    OrderPriority,
    SalesChannel,
    CountryID
)
SELECT DISTINCT
    sr.OrderID,
    TO_DATE(sr.OrderDate, 'MM/DD/YY'),
    TO_DATE(sr.ShipDate, 'MM/DD/YY'),
    sr.OrderPriority,
    sr.SalesChannel,
    (SELECT CountryID
        FROM Countries
        WHERE CountryName = sr.Country)
FROM SalesRaw sr;

-- Insert order details
INSERT INTO OrderDetails (
    OrderID,
    ItemTypeID,
    UnitsSold,
    UnitPrice,
    UnitCost,
    TotalRevenue,
    TotalCost,
    TotalProfit
)
SELECT
    sr.OrderID,
    (SELECT ItemTypeID
     FROM ItemTypes
     WHERE ItemTypeName = sr.ItemType),
    sr.UnitsSold,
    sr.UnitPrice,
    sr.UnitCost,
    sr.TotalRevenue,
    sr.TotalCost,
    sr.TotalProfit
FROM SalesRaw sr;